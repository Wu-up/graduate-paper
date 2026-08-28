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

Detailed chapter writing methods: `docs/ACADEMIC_WRITING_PLAYBOOK.md`.

Reference thesis positioning: `docs/REFERENCE_THESIS_INDEX.md`.

## Placeholder Policy

- Template text must contain `【模板测试内容，不属于正式论文正文】`.
- Placeholder text cannot be treated as evidence.
- Placeholder figures/tables cannot be used in formal claims.
