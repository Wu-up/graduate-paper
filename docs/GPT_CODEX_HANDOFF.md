# GPT / Codex / GitHub / Overleaf Handoff

## GPT

- Plans academic argument and chapter logic.
- Drafts or revises formal thesis body only when the user asks.
- Performs literature and claim review.
- Keeps factual claims tied to source evidence.

## Codex

- Manages files, LaTeX structure, template formatting, Git, Overleaf sync, and automation.
- Reads official format sources and records implementation choices.
- Must not rewrite GPT-confirmed formal body text unless the user explicitly asks.
- Must not invent facts, numbers, datasets, or paper status.

## GitHub

- Source-of-truth repository for the LaTeX project and documentation.
- Stores source `.tex`, `.bib`, class/config files, and docs.
- Does not store `_source_materials`, `_tmp`, or generated PDFs by default.

## Overleaf

- Compile and visual verification environment.
- Receives the same source files through Git push.
- Used to validate XeLaTeX output when local TeX is unavailable.

## Formal Writing Flow

1. Facts and numbers are added to `docs/FACTS_AND_NUMBERS.md`.
2. GPT drafts or revises content against those facts.
3. User confirms the draft.
4. Codex places confirmed text into the corresponding `.tex` file without substantive rewriting.
5. Overleaf compiles and visual checks are performed.

