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

## Placeholder Policy

- Template text must contain `【模板测试内容，不属于正式论文正文】`.
- Placeholder text cannot be treated as evidence.
- Placeholder figures/tables cannot be used in formal claims.

