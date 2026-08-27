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
| Margins | Upstream class uses top 21 mm, bottom 25.5 mm, left/right 30 mm | Top/bottom/left/right all 2.5 cm | Set all margins to 2.5 cm | Official 0854 spec has higher authority | Direct | None |
| Line spacing | Upstream has template-specific spacing | 1.5 line spacing, no paragraph spacing | Use `\onehalfspacing`, `\parskip=0pt` | Match official text | Direct | None |
| Chapter numbering | Upstream supports multiple style options | Science/engineering recommended `1`, `1.1`, `1.1.1` | Configure Arabic chapter/section/subsection numbering | This is 0854 electronic information | Direct | None |
| Figure/table captions | Upstream has caption setup | Figures below, tables above, centered captions | Keep chapter-based `图1.1`/`表1.1`, captions centered | Match spec examples | Direct | None |
| References | Upstream uses natbib/BibTeX with `bstutf8.bst` | GB/T 7714-2015 | Use `biblatex-gb7714-2015` with Biber | Modern Overleaf TeX Live support and clearer style control | Intended match | Requires Biber on Overleaf |
| Official declarations | Upstream old declarations differ | 2026 package includes AI declaration and originality/authorization statements | Add dedicated backmatter placeholders | Match current package order | Placeholder | Final signed/official pages must be manually verified |
| Build products | ZIP B includes generated `.aux`, `.log`, `.pdf`, `.xdv`, etc. | Source repository should not require generated files | Ignore generated products and `main.pdf` | Keep repo clean | Direct | Overleaf regenerates PDF |

## Deviations Requiring Later Visual Check

- Exact cover typography and spacing are approximated in LaTeX and must be visually checked against the official Word template before formal submission.
- Defense certificate and signed declaration scans are placeholders at P-000.
- Official Windows fonts are not guaranteed on Overleaf; Noto/Fandol fallback is intentionally documented.

