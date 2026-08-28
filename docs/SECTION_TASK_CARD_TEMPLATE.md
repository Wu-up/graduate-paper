# Full Section Task Card Template

Use one completed card for each section before a GPT author drafts formal thesis prose. This is the `FULL_TASK_CARD_TEMPLATE`: use it for each chapter's first section, a first core-method expansion, high-risk result sections, sections with evidence conflicts, a detected quality decline, or whenever the user or GPT A requests FULL mode. This card is a writing-control artifact, not a substitute for the section itself.

```text
TASK_ID:
SECTION_ID:
SECTION_TITLE:
WRITING_MODE: DRAFT | REVISE | REVIEW | HOLD
AUTHORING_REVIEW_MODE: SUPERVISOR_PREAPPROVAL
GPTB_PACKET_PATH: gptBmd/<TASK_ID>.md

PURPOSE:

QUESTIONS_TO_ANSWER:

ARGUMENT_FLOW:

MANDATORY_FACTS:

FORBIDDEN_CLAIMS:

EVIDENCE_CLASS_ALLOWED: PAPER_REPORTED | EXPERIMENTALLY_VERIFIED | THESIS_PLACEHOLDER (layout only) | LEGACY_PLACEHOLDER (do not use)

LITERATURE_NEEDED:

MANDATORY_REPO_DOCS:
- docs/FACTS_AND_NUMBERS.md
- docs/PLACEHOLDER_LEDGER.md
- docs/WRITING_STYLE_GUIDE.md
- docs/ACADEMIC_WRITING_PLAYBOOK.md
- docs/REFERENCE_THESIS_INDEX.md

PLAYBOOK_SECTIONS:

REFERENCE_STYLE_PRIORITY:

PROSE_CONSTRAINTS:

CITATION_REQUIREMENTS:

FIGURE_TABLE_FORMULA_REQUIREMENTS:

TARGET_LENGTH:

PREVIOUS_SECTION_LINK:

NEXT_SECTION_LINK:

PLACEHOLDER_POLICY:

ACCEPTANCE_CRITERIA:

AUTHOR_OUTPUT_REQUIRED:
- Source Packet
- 可入库正文
- Author Notes
- CODEX_HANDOFF_PROMPT with WAIT_FOR_SUPERVISOR_APPROVAL

GPT B must create the real Markdown packet at `GPTB_PACKET_PATH`; Codex reads
that file under `docs/GPTB_PACKET_WORKFLOW.md`.
```

## Completion Rule

The author supplies all three required outputs. Codex only places user-confirmed or GPT-confirmed formal text into a chapter file when explicitly asked.

For routine sections with stable, clear boundaries, use
`docs/SECTION_TASK_CARD_LITE_TEMPLATE.md`. Lite mode inherits all global
constraints and must not be used to bypass them.

Full mode uses `SUPERVISOR_PREAPPROVAL`: GPT A returns `CONTENT_APPROVED` before
Codex integration, followed by GPT A repository final review.
