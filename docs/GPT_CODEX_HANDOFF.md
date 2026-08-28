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

Before formal writing, GPT 总导师 and GPT 正文作者 must read:

- `docs/FACTS_AND_NUMBERS.md`
- `docs/PLACEHOLDER_LEDGER.md`
- `docs/WRITING_STYLE_GUIDE.md`
- `docs/ACADEMIC_WRITING_PLAYBOOK.md`
- `docs/REFERENCE_THESIS_INDEX.md`
- `docs/LITERATURE_EVIDENCE_POOL.md`
- `docs/CITATION_AND_SOURCE_RISK_LOG.md`

Codex does not need to rewrite thesis body text according to the reference theses. Codex's role is to preserve files, enforce governance boundaries, and place user-confirmed or GPT-confirmed text only when explicitly asked.

The literature pool governs which references may be used and what claims they
can support. The citation/source risk log governs which publication metadata,
metric definitions, dataset protocol details, and claim boundaries are still
unresolved or restricted.

1. Facts and numbers are added to `docs/FACTS_AND_NUMBERS.md`.
2. GPT drafts or revises content against those facts.
3. User confirms the draft.
4. Codex places confirmed text into the corresponding `.tex` file without substantive rewriting.
5. Overleaf compiles and visual checks are performed.

## Cross-window Recovery and Approval Boundary

- New windows begin with `docs/AI_AUTHORING_ENTRYPOINT.md`.
- `docs/SUPERVISOR_CHECKPOINT.md` is a rapid status entrypoint, not a facts or
  evidence source.
- Lite Task Cards remove repeated text only; all global constraints remain in
  force through the entrypoint and linked governance documents.
- GPT B research outputs must be preserved as Markdown attachments or repository
  review packets, rather than left only in chat history.
- GPT B packet creation, naming, local delivery, and Codex intake are governed
  by `docs/GPTB_PACKET_WORKFLOW.md`. Every Task Card declares
  `GPTB_PACKET_PATH`; both authoring-review modes use the same mechanism.
- Codex reads the declared `GPTB_PACKET_PATH`. If it is missing, Codex returns
  `BLOCKED_MISSING_GPTB_PACKET` and does not infer missing formal content.
- After `SECTION_ACCEPTED`, update the supervisor checkpoint when its update
  rule is met. After `CHAPTER_ACCEPTED`, create a chapter handoff.

## Authoring Review Modes

- `DIRECT_REPO_REVIEW` is the default for Lite or Enhanced Lite routine sections
  with stable facts and evidence boundaries. GPT B hands off with
  `READY_FOR_REPO_INTEGRATION`; Codex may mechanically integrate, check
  citations/BibTeX/compilation/diff, and record only
  `PENDING_SUPERVISOR_REPO_REVIEW`. GPT A alone accepts or returns revision
  after reading GitHub.
- `SUPERVISOR_PREAPPROVAL` is required for Full cards, core methods, experiments,
  high-risk claims, source conflicts, and GPT A-directed preapproval. GPT B uses
  `WAIT_FOR_SUPERVISOR_APPROVAL`; Codex waits for `CONTENT_APPROVED` before
  integration.
- Both modes retain final repository review. S1-02 retains S1-02E unified review
  and every completed chapter retains the Chapter Gate.
