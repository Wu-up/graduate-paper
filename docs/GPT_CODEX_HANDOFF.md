# GPT / Codex / GitHub / Overleaf Handoff

## GPT

- Plans academic argument and chapter logic.
- Drafts or revises formal thesis body only when the user asks.
- Performs literature and claim review.
- Keeps factual claims tied to source evidence.
- Treats equation numbering and numerical citation order as formal output constraints, not optional cosmetic cleanup.

## Codex

- Manages files, LaTeX structure, template formatting, Git, Overleaf sync, and automation.
- Reads official format sources and records implementation choices.
- Must not rewrite GPT-confirmed formal body text unless the user explicitly asks.
- Must not invent facts, numbers, datasets, or paper status.
- Enforces whole-thesis equation and citation formatting during every formal-body integration: GPT B supplies standalone math and optional stable labels, never final equation numbers; Codex converts formal displayed equations into automatic chapter-local numbering and uses `\eqref` references without changing mathematical content.
- Verifies that multi-reference numerical citation clusters render in ascending order and that the bibliography remains consistent with sequential citation numbering; GPT B never hand-writes citation numbers.

## GitHub

- Source-of-truth repository for the LaTeX project and documentation.
- Stores source `.tex`, `.bib`, class/config files, and docs.
- Does not store `_source_materials`, `_tmp`, or generated PDFs by default.

## Overleaf

- Compile and visual verification environment.
- Receives the same source files through Git push.
- Used to validate XeLaTeX output when local TeX is unavailable.
- Is the required fallback for checking rendered equation numbers and citation-number order when local compilation is unavailable.

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
2. GPT drafts or revises content against those facts and the global equation/citation output constraints in `docs/WRITING_STYLE_GUIDE.md`.
3. User confirms the draft.
4. Codex places confirmed text into the corresponding `.tex` file without substantive rewriting.
5. Codex normalizes formal displayed equations to automatic chapter-based numbering and normalizes same-point multi-reference citations without changing claim scope.
6. Overleaf or local XeLaTeX/Biber compilation verifies equation-number sequence, citation-number order, bibliography consistency, and visual output.

## Mechanical Equation And Citation Checks

Before any integrated section can be reported as `PENDING_SUPERVISOR_REPO_REVIEW`, Codex must perform the following checks on the modified formal body:

- scan for raw `\[...\]`, `equation*`, `align*`, or other unnumbered standalone display mathematics; formal thesis equations must instead use automatic numbered environments;
- confirm the visible numbering follows the class-defined chapter sequence such as `(2-1)`, `(2-2)`, `(3-1)`;
- use `\label{eq:...}` / `\eqref{...}` for equations referred to in prose and never hard-code visible equation numbers;
- scan same-point adjacent or grouped citations and prefer one `\cite{...}` cluster when the references support the same statement;
- compile and confirm every multi-reference numerical citation cluster renders in ascending order; do not assume citation-key order alone is sufficient under `sorting=none`;
- do not manually type citation numbers or reorder `references.bib` entries merely to force numbering;
- if the active GB/T 7714 style does not automatically sort a valid multi-reference cluster, report the rendering behavior and apply the smallest template-level citation-sorting fix only after confirming it preserves GB/T 7714-2015 and first-citation bibliography order.

These are mechanical format operations. They do not authorize Codex to alter mathematical definitions, evidence scope, prose claims, or the semantic grouping of genuinely separate citation points.

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
- Creating that handoff starts the three-phase
  `SUCCESSOR_WINDOW_QUALITY_GATE`; it does not close the prior A/B windows.
  Codex records states only; it does not judge successor quality or mark an
  operational pass without a prior-GPT-A decision. It creates the
  closure-candidate only after both operational passes, never records
  `WINDOW_COMPLETE` before `FINAL_WINDOW_CLOSURE_APPROVED`, and makes the final
  closure commit status/governance only. The detailed authority is
  `docs/SUCCESSOR_WINDOW_QUALITY_GATE.md`.
- Formal GPT B work is delivered as a real `gptBmd/<TASK_ID>.md` file, or
  `gptBmd/<TASK_ID>-R1.md` for a revision. It contains Source Packet, 可入库正式
  正文, Author Notes, and `CODEX_HANDOFF_PROMPT`; chat is not the primary
  payload. If GPT B cannot write the repository path, it supplies a real `.md`
  attachment rather than requiring manual reconstruction from chat prose.

## Authoring Review Modes

- `DIRECT_REPO_REVIEW` is the default for Lite or Enhanced Lite routine sections
  with stable facts and evidence boundaries. GPT B hands off with
  `READY_FOR_REPO_INTEGRATION`; Codex may mechanically integrate, check
  equations/citations/BibTeX/compilation/diff, and record only
  `PENDING_SUPERVISOR_REPO_REVIEW`. GPT A alone accepts or returns revision
  after reading GitHub.
- `SUPERVISOR_PREAPPROVAL` is required for Full cards, core methods, experiments,
  high-risk claims, source conflicts, and GPT A-directed preapproval. GPT B uses
  `WAIT_FOR_SUPERVISOR_APPROVAL`; Codex waits for `CONTENT_APPROVED` before
  integration.
- Both modes retain final repository review. S1-02 retains S1-02E unified review
  and every completed chapter retains the Chapter Gate.
- GPT A final repository review and every Chapter Gate verify these whole-thesis
  equation and citation rules for their applicable scope. New A/B windows inherit
  them automatically for Chapters 1--5 and later formal supplements.
