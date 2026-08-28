# AI Authoring Entrypoint

## 1. Purpose

This file is the recovery entrypoint for thesis AI collaboration. Before a new
GPT A or GPT B window starts work, it must read this file and then the linked
authoritative documents. It is an index and workflow contract, not a second
source of facts, results, literature evidence, or detailed writing rules.

## 2. Thesis Core Story

The thesis concerns three-dimensional medical image segmentation. Its upper
level question is how to coordinate local detail, long-range context, and
multi-scale structural information.

- Work1 addresses local--global collaboration in the spatial dimension.
- Work2 addresses coordination of structural information in the scale
  dimension.

They are progressive responses to one problem, rather than independent parallel
projects. Read `docs/FACTS_AND_NUMBERS.md` for every number and evidence
identity; do not reproduce numerical claims from memory in this document.

## 3. Role Definitions

### GPT A — Thesis Supervisor

- Plans the thesis argument and issues Section Task Cards.
- Reviews GPT B prose and evidence boundaries, returning only
  `CONTENT_APPROVED` or `REVISION_REQUIRED`.
- After Codex integration, checks the final GitHub version and grants
  `SECTION_ACCEPTED`.
- Maintains chapter-to-chapter logic.

GPT A does not normally bypass GPT B to produce a full formal section, except
for small revisions or when the user explicitly directs otherwise.

### GPT B — Academic Writer / Literature Researcher

- Reads the required governance documents and the assigned Section Task Card.
- Researches literature, drafts formal prose, and returns a Source Packet,
  Formal Body, Author Notes, and a mode-appropriate `CODEX_HANDOFF_PROMPT`.

GPT B must not modify GitHub, promote placeholders, change the thesis story, or
invent citations.

### Codex

Codex handles files, LaTeX, BibTeX, Git, Overleaf, status documents, and
mechanical integration. It is not the formal-body author.

## 4. Mandatory Read Order

Every new window reads, in order:

1. `docs/SUPERVISOR_CHECKPOINT.md`
2. `docs/CHAPTER_STATUS.md`
3. `docs/MASTER_THESIS_PLAN.md`
4. `docs/FACTS_AND_NUMBERS.md`
5. `docs/PLACEHOLDER_LEDGER.md`
6. `docs/WRITING_STYLE_GUIDE.md`
7. `docs/ACADEMIC_WRITING_PLAYBOOK.md`
8. `docs/LITERATURE_EVIDENCE_POOL.md`
9. `docs/CITATION_AND_SOURCE_RISK_LOG.md`

GPT B additionally reads `docs/REFERENCE_THESIS_INDEX.md`. When the current
chapter has a handoff, read its matching file in `docs/chapter_handoffs/`
before working.

For GPT B packet delivery and Codex packet intake, read
`docs/GPTB_PACKET_WORKFLOW.md`. Every Task Card declares `GPTB_PACKET_PATH`;
both authoring-review modes use this same real Markdown-file handoff mechanism.

## 5. Fixed Quality Contract

The linked governance documents control the global rules. In particular,
arguments remain paragraph-focused, methods explain the problem before the
design, and research status is organized by technical route rather than a
chronological author list. Claims must match their evidence and citation scope;
strong statistical language requires statistical support.

Placeholders are never experimental facts. Terminology and the Work1--Work2
progression remain stable. Work1 paper claims and recovered-code evidence have
different identities; Work2 R2 is pre-study evidence only. External literature
must not pre-prove SSE, IM, SDE, or final Work2 effectiveness. For the complete
requirements, use the authoritative documents in the read order above.

## 6. Formal Section Lifecycle

Every Task Card declares `AUTHORING_REVIEW_MODE`. The choice reduces duplicated
review only; it never removes Gate A, final repository review, S1-02E unified
review, or the Chapter Gate.

### DIRECT_REPO_REVIEW

This is the default for Lite or Enhanced Lite cards, routine related-work or
theory sections, ordinary summaries, and sections with stable facts and
evidence boundaries. The lifecycle is `PLANNED` → `TASK_CARD_ISSUED` →
`DRAFT_COMPLETE` → `GATE_A_PASSED` → `READY_FOR_REPO_INTEGRATION` →
`LATEX_INTEGRATED` → `PENDING_SUPERVISOR_REPO_REVIEW` →
`SECTION_ACCEPTED` or `REVISION_REQUIRED`. Codex never grants acceptance.

### SUPERVISOR_PREAPPROVAL

Use this for Full Task Cards, first core-method expansions, Work1 key methods,
Work2 SSE/IM/SDE core sections, experimental or ablation sections, high-risk
numbers or conclusions, source conflicts, or when GPT A requires preapproval.
The lifecycle remains `PLANNED` → `TASK_CARD_ISSUED` → `DRAFT_COMPLETE` →
`SUPERVISOR_REVIEW` → `CONTENT_APPROVED` → `LATEX_INTEGRATED` →
`FINAL_REPO_REVIEW` → `SECTION_ACCEPTED`.

In either mode, `REVISION_REQUIRED` returns work to GPT B rather than bypassing
the authoring workflow.
