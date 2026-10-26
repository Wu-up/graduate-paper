"""Export committed, GitHub-verified compilation sources; never reads credentials."""
import hashlib
import json
from pathlib import Path, PurePosixPath
import re
import subprocess
import sys
import zipfile

ROOT = Path(__file__).resolve().parents[1]


def git(*args):
    return subprocess.check_output(['git', '-C', str(ROOT), *args])


def main():
    if len(sys.argv) != 2:
        raise SystemExit('Usage: python scripts/export_overleaf.py NEW_OUTPUT.zip')
    output = Path(sys.argv[1]).resolve()
    manifest = output.with_suffix('.manifest.json')
    if output.exists() or manifest.exists():
        raise SystemExit('Refusing to overwrite an existing backup.')
    commit = git('rev-parse', 'HEAD').decode().strip()
    if commit != git('rev-parse', 'origin/main').decode().strip():
        raise SystemExit('First fetch/push and verify HEAD equals origin/main.')
    if git('status', '--porcelain', '--untracked-files=no').strip():
        raise SystemExit('Commit or preserve tracked modifications first.')
    paths = git('ls-tree', '-r', '--name-only', '-z', 'HEAD').decode().split('\0')
    extensions = {'.tex', '.bib', '.sty', '.cls', '.bst', '.bbx', '.cbx', '.lbx',
                  '.def', '.cfg', '.clo', '.fd', '.ttf', '.otf', '.png', '.jpg',
                  '.jpeg', '.pdf', '.eps'}
    roots = {'chapters', 'frontmatter', 'backmatter', 'figures', 'tables', 'fonts'}
    selected = [p for p in paths if p and
                (p == 'latexmkrc' or
                 (PurePosixPath(p).suffix.lower() in extensions and
                  (len(PurePosixPath(p).parts) == 1 or
                   PurePosixPath(p).parts[0] in roots)))]
    blobs = {p: git('show', f'HEAD:{p}') for p in selected}
    for p in selected:
        mode = git('ls-tree', 'HEAD', '--', p).split()[0]
        if mode != b'100644' and mode != b'100755':
            raise SystemExit(f'Unsupported non-regular file: {p}')
        if len(blobs[p]) > 20 * 1024 * 1024:
            raise SystemExit(f'Review large compilation asset before export: {p}')
        if re.search(rb'olp_[A-Za-z0-9]+|-----BEGIN .*PRIVATE KEY-----', blobs[p]):
            raise SystemExit(f'Potential credential in source: {p}')
    missing = []
    for p, data in blobs.items():
        if PurePosixPath(p).suffix not in {'.tex', '.cls', '.sty'}:
            continue
        text = re.sub(r'(?<!\\)%[^\n]*', '', data.decode('utf-8'))
        for kind, name in re.findall(
                r'\\(input|include|includegraphics|addbibresource)(?:\[[^\]]*\])?\{([^}]+)\}', text):
            suffixes = ['', '.tex'] if kind in {'input', 'include'} else (
                ['', '.bib'] if kind == 'addbibresource' else
                ['', '.pdf', '.png', '.jpg', '.jpeg', '.eps'])
            if not any(name + suffix in blobs for suffix in suffixes):
                missing.append(f'{p}: {kind}{{{name}}}')
    if missing:
        raise SystemExit('Missing tracked root-relative dependencies:\n' + '\n'.join(missing))
    output.parent.mkdir(parents=True, exist_ok=True)
    with zipfile.ZipFile(output, 'x', zipfile.ZIP_DEFLATED) as archive:
        for p, data in sorted(blobs.items()):
            archive.writestr(p, data)
    with zipfile.ZipFile(output) as archive:
        assert archive.testzip() is None
        assert set(archive.namelist()) == set(blobs)
        assert all(archive.read(p) == data for p, data in blobs.items())
    report = {'commit': commit, 'github_ref': 'origin/main', 'file_count': len(blobs),
              'zip_sha256': hashlib.sha256(output.read_bytes()).hexdigest(),
              'files': {p: hashlib.sha256(data).hexdigest() for p, data in sorted(blobs.items())},
              'validation': 'ZIP integrity, tracked blob equality, explicit dependency paths; not a TeX compile'}
    manifest.write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding='utf-8')
    print(json.dumps({'zip': str(output), 'files': len(blobs),
                      'sha256': report['zip_sha256']}, ensure_ascii=False))


if __name__ == '__main__':
    main()
