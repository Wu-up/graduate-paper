# Graduate Paper

华南师范大学 0854 电子信息硕士论文 LaTeX 工程初始化仓库。

本仓库当前处于 P-000 基础设施阶段，只包含模板、格式、章节骨架、文献格式测试和项目管理文档。所有正文占位均标记为：

`【模板测试内容，不属于正式论文正文】`

## Compile

Use XeLaTeX. On Overleaf, set:

- Compiler: XeLaTeX
- Main document: `main.tex`
- Bibliography tool: Biber if prompted

Local compile was not available during initialization because `xelatex` and `latexmk` were not found in PATH.

## Important Files

- `main.tex`: root entry point for Overleaf.
- `scnuthesis.cls`: SCNU 0854 thesis class adapted from `scnu/scnuthesis` behavior and official 0854 format requirements.
- `frontmatter/thesis_info.tex`: thesis metadata placeholder.
- `chapters/`: five-chapter frozen V1.0 skeleton; formal prose remains TODO-only.
- `docs/SCNU_0854_FORMAT_SPEC.md`: extracted official format requirements.
- `docs/TEMPLATE_CHANGELOG.md`: upstream/template comparison and deviations.
- `docs/FACTS_AND_NUMBERS.md`: evidence boundary for formal claims.

## Source Materials

Original ZIP files are preserved locally under `_source_materials/` and ignored by Git.

Temporary extraction files are under `_tmp/` and ignored by Git. They are intentionally not recursively deleted because this workspace has a no-batch-delete policy.

## Attribution

This project keeps attribution to upstream SCNUThesis:

- Upstream: https://github.com/scnu/scnuthesis
- Reference commit: `a85b00f5a411c099eef5985a8f1bbf32ca1e80fe`
- License stated by upstream README: The LaTeX Project Public License (LPPL)
