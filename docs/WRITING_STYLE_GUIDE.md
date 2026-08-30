# Writing Style Guide

## Role Boundary

Codex manages files, LaTeX format, Git operations, compilation support, and automation. Codex must not become the author of formal thesis body text. Formal body text should come from the user, GPT-confirmed academic drafting, verified experiment evidence, and supervisor feedback.

## Chinese Thesis Style

- Use formal, clear, restrained academic Chinese.
- Prefer direct topic sentences and evidence-driven paragraphs.
- Avoid slogan-like claims and unexplained adjectives.
- Explain the research problem before naming the method.
- For every claim about performance, efficiency, dataset, module effect, or comparison, point to a verified source in `docs/FACTS_AND_NUMBERS.md`.
- Keep terminology stable after it is defined.
- Do not change GPT-confirmed body text unless the user explicitly asks for revision.

## Whole-Thesis Hard Constraints

- Maintain high information density: every paragraph must perform one clear argumentative task.
- Avoid bold-subheading style AI body prose inside formal thesis text.
- Avoid mechanical three-point structures when the argument requires a causal or evidential chain.
- Avoid template transitions that do not add logical content.
- Do not use empty intensifiers such as “有效提升”, “明显改善”, “充分证明”, or “具有重要意义” without concrete evidence.
- Use “显著” only when there is statistical evidence or a clearly defined quantitative standard.
- Keep technical terms stable across abstract, chapters, figures, tables, and summary.
- Result analysis must not merely read the table; it must explain phenomenon, difference, cause, method relation, hypothesis support, and cost or exception.
- Strong conclusions must have matching evidence in `docs/FACTS_AND_NUMBERS.md`.
- Do not imitate or copy specific sentences from reference theses.

## Formal Thesis Voice Firewall

- The formal thesis body treats the thesis itself as the primary academic
  narrator. Method and experiment chapters normally use `本文`, `本章`,
  `本文方法`, `所提出方法`, or the formal model name; they must not use internal
  project-management names such as `Work1`, `Work2`, `R2`, `previous work
  packet`, `recovered code`, `evidence identity`, `source packet`, or
  `placeholder governance`, unless a term is part of an officially public model
  name.
- `Work1` and `Work2` are permitted only in governance documents, Source
  Packets, Author Notes, and internal review records. In final visible PDF
  prose, use `第一项研究`, `第二项研究`, or the formal method name when a
  distinction is necessary.
- Source provenance and thesis narrative are separate. Formal body text must
  not contain source-audit explanations such as “根据Work1论文”, “原论文没有给出”,
  “根据权威来源”, “recovered code显示”, “证据身份”, “来源边界”, “治理文件”,
  “当前证据允许”, “本节只固定”, or explanations of why a fact was not written.
- When a fact lacks reliable support, omit it from the formal body. An
  author-facing reminder may be retained only as a non-rendering LaTeX comment:
  `%（作者核验备注：……）`; never explain the omission to the thesis reader.
- Each section or subsection normally uses at most one necessary navigation
  sentence. Do not form a repeated pattern of “后续将”, “本节不”, “不在本节”,
  “将在下一节”, “这里只”, or “以避免重复”. Structure should be carried by the
  argument itself.
- Method prose should positively define what the method is, how it works, why
  it is designed that way, and how information flows. Avoid defensive bodies
  built from repeated “不是”, “不等同于”, “不进一步”, “不推断”, or “不补充”.
  Necessary boundaries belong in one limited, relevant location.
- A self-authored published paper may be used for internal fact verification,
  but a thesis method or experiment chapter must not cite it paragraph by
  paragraph to establish its own method facts. Any disclosure of prior
  publication belongs once in an appropriate unified location or in the
  institutionally required research-output section.
- Genuine scientific limitations, such as absent statistical testing, limited
  benchmarks, or a limited visualization sample, may appear at the most
  relevant location. State each limitation once as a scientific limitation, not
  as a source-audit explanation or repeated disclaimer.

Detailed chapter writing methods: `docs/ACADEMIC_WRITING_PLAYBOOK.md`.

Reference thesis positioning: `docs/REFERENCE_THESIS_INDEX.md`.

## Equation And Citation Output Constraints

These are whole-thesis hard output constraints inherited by every GPT A Task Card, GPT B formal-body packet, Codex integration, repository final review, and Chapter Gate.

### Equations

- The official SCNU 0854 format requires displayed equations to be numbered at the right. This project implements chapter-based equation numbering through `scnuthesis.cls`, with the form `chapter-number`, for example `(2-1)`, `(2-2)`, `(3-1)`.
- Every standalone displayed mathematical equation in the formal thesis body must participate in automatic equation numbering. Do not use raw `\[...\]`, `equation*`, `align*`, or other unnumbered display environments for formal thesis equations.
- Use numbered `equation`, `align`, or `equation` + `aligned` as appropriate. One multi-line logical equation should normally carry one number; mathematically independent equations should receive separate sequential numbers.
- Do not hard-code equation numbers and do not use manual `\tag{...}` for ordinary thesis equations. Let the class reset and number equations automatically by chapter.
- When prose refers to an equation, assign a stable `\label{eq:...}` and reference it with `\eqref{...}`. Never type a literal equation number into prose.
- Inline mathematics remains inline and is not numbered.
- GPT B must not invent final equation numbers in Markdown packets. It should provide the mathematical content and, where useful, stable label intent; Codex performs the final LaTeX numbering wrapper during integration.

### Numerical Citations And Reference Order

- The thesis uses GB/T 7714-2015 sequential numerical citation style. `scnuthesis.cls` currently uses `biblatex` with `style=gb7714-2015` and `sorting=none`, so bibliography numbering follows citation order.
- At one semantic citation point, multiple supporting references should normally be grouped in a single `\cite{key1,key2,...}` command rather than emitted as mechanically adjacent separate citation commands.
- The final rendered citation numbers within every multi-reference citation cluster must appear in ascending numerical order. Consecutive numbers may be compressed only according to the active GB/T 7714 citation style; do not manually type or manually compress reference numbers.
- When multiple citations are semantically separate in the sentence, separate citation points are allowed, but each multi-reference cluster must still render in ascending order.
- Because `sorting=none` assigns numbers by first appearance, source-key order alone is not a sufficient check. Codex must compile or use Overleaf rendering to verify the displayed numerical order after integration.
- The bibliography itself must remain consistent with sequential numerical coding and first-citation order. Do not manually reorder `references.bib` entries to force visible numbering.
- Citation-key existence, evidence support, placement, rendered numerical order, and bibliography consistency are separate checks; all must pass.

## Placeholder Policy

- Template text must contain `【模板测试内容，不属于正式论文正文】`.
- Placeholder text cannot be treated as evidence.
- Placeholder figures/tables cannot be used in formal claims.
