# Template Changelog

## Baseline

- UPSTREAM: `scnu/scnuthesis`
- URL: https://github.com/scnu/scnuthesis
- REFERENCE COMMIT: `a85b00f5a411c099eef5985a8f1bbf32ca1e80fe`
- Current upstream check on 2026-08-27: GitHub `HEAD` and `refs/heads/master` both resolved to `a85b00f5a411c099eef5985a8f1bbf32ca1e80fe`.
- ZIP C: `_source_materials/scnuthesis-master (2).zip`, clean source-oriented baseline.
- ZIP B: `_source_materials/scnuthesis-master (1).zip`, similar template plus generated build products and Noto/Fandol font changes.
- OFFICIAL FORMAT SOURCE: SCNU 0854 电子信息 2026-07-10 package, `_source_materials/1783666077974369.zip`.
- LICENSE: upstream README states the project follows The LaTeX Project Public License (LPPL). This project keeps attribution in `LICENSE` and `README.md`.

## Changes

| Area | Upstream Behavior | Official Requirement | Project Change | Reason | Match | Overleaf Compromise |
|---|---|---|---|---|---|---|
| Root file | Upstream uses `thesis.tex` and `data/` | No specific LaTeX layout requirement | Use root `main.tex`, `frontmatter/`, `chapters/`, `backmatter/` | Match requested Overleaf-friendly thesis structure | Structural only | Easier Overleaf entry point |
| Fonts | ZIP C uses Windows SimSun/SimHei/KaiTi; ZIP B uses Noto/Fandol for CJK | Chinese body Song, headings Hei, Latin Times New Roman | Prefer Windows fonts when available; fall back to Noto/Fandol | Keep official intent while compiling on Overleaf/Linux | Approximate for Linux | Noto/Fandol are visual substitutes, not official Windows fonts |
| Margins and running heads | Upstream class uses top 21 mm, bottom 25.5 mm, left/right 30 mm with its own header layout | Top/bottom/left/right all 2.5 cm; header about 1.5 cm from page top; footer page number centered; 1.5 pt header rule | Set `a4paper, top=2.5cm, bottom=2.5cm, left=2.5cm, right=2.5cm, headheight=1.0cm, headsep=0.5cm, footskip=1.5cm`; removed `includeheadfoot` | Keep text body boundary at official 2.5 cm while placing header inside the top margin and footer near the lower margin without negative spacing hacks | Direct for margins; stable approximation for header/footer placement | None |
| Line spacing | Upstream has template-specific spacing | 1.5 line spacing, no paragraph spacing | Use `\onehalfspacing`, `\parskip=0pt` | Match official text | Direct | None |
| Chapter numbering | Upstream supports multiple style options | Science/engineering recommended `1`, `1.1`, `1.1.1` | Configure Arabic chapter/section/subsection numbering | This is 0854 electronic information | Direct | None |
| Equation numbering | Upstream and amsmath defaults may use dot-based numbering | Official allows chapter-based examples such as `3-2` | Run `\numberwithin{equation}{chapter}` first, then finally set `\theequation` to `\thechapter-\arabic{equation}` | Prevent amsmath from overriding the required hyphen style | Direct | None |
| Figure/table captions | Upstream has caption setup | Figure/table titles are 小四号黑体, centered; figures below, tables above | Define caption font as `\hei\zihao{-4}` and keep chapter-based `图1.1`/`表1.1` | Avoid ambiguous `font={small,bf}` because `small` is not Chinese 小四 | Direct | None |
| References | Upstream uses natbib/BibTeX with `bstutf8.bst` | GB/T 7714-2015 | Use `biblatex-gb7714-2015` with Biber | Modern Overleaf TeX Live support and clearer style control | Intended match | Requires Biber on Overleaf |
| Chinese cover | Upstream has SCNU visual assets and older cover logic | 2026 professional master's cover fields include classification, secret level, UDC, student ID, Chinese title, applicant, major, direction, school, supervisor, industry supervisor, and date | Reuse upstream `figures/title.pdf` and `figures/scnu.pdf`; keep 2026 professional degree field structure with placeholders | Restore SCNU visual identity without copying obsolete layout wholesale | Structural match; visual approximation | Exact vertical spacing left for final visual pass |
| English inner cover | Upstream has older title-page behavior | Official template includes South China Normal University, degree statement, English title, Candidate, Supervisor, Major, School, date | Reordered fields and labels to match the official template more closely | Preserve placeholder status while improving structure | Structural match | Exact spacing left for final visual pass |
| Defense certificate | Not present in the P-000 root project | Official order places defense certificate before Chinese abstract and without page number | Added `frontmatter/defense_certificate.tex` before `\frontmatter` | Required front matter page order | Placeholder | Formal page or scan must replace it later |
| Cross-reference tests | P-000 had placeholder figures/tables but limited reference tests | Template should exercise equations, figures, tables, and references | Added equation `eq:template-energy`, figure/table labels, and `\eqref`/`\ref` prose tests | Catch numbering regressions before freeze | Direct | Requires Overleaf compile |
| Official declarations | Upstream old declarations differ | 2026 package includes AI declaration and originality/authorization statements | Add dedicated backmatter placeholders | Match current package order | Placeholder | Final signed/official pages must be manually verified |
| Build products | ZIP B includes generated `.aux`, `.log`, `.pdf`, `.xdv`, etc. | Source repository should not require generated files | Ignore generated products and `main.pdf` | Keep repo clean | Direct | Overleaf regenerates PDF |

## Deviations Requiring Later Visual Check

- Exact cover typography and spacing are approximated in LaTeX and must be visually checked against the official Word template before formal submission.
- Defense certificate and signed declaration scans are placeholders at P-000.
- Official Windows fonts are not guaranteed on Overleaf; Noto/Fandol fallback is intentionally documented.
- Chapter odd-page starts depend on `openright` and should be visually checked in the compiled PDF.
