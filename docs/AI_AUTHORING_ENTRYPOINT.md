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

## 4. Chapter-Scoped Window Lifecycle

GPT A and GPT B windows are chapter-scoped by default. The recommended
assignment is A1/B1 for Chapter 1, A2/B2 for Chapter 2, A3/B3 for Chapter 3,
A4/B4 for Chapter 4, and A5/B5 for Chapter 5 and necessary whole-thesis
closeout work.

1. A window may work only on the Current Chapter declared in
   `docs/SUPERVISOR_CHECKPOINT.md`. For example, when the Current Chapter is
   Chapter 2, A2 and B2 must not independently begin formal Chapter 3 work.
2. GPT A supervises the complete current-chapter cycle, from the first Section
   Task Card through the Chapter Gate. GPT B executes only current-chapter
   Section Task Cards explicitly issued by that GPT A.
3. After every section in the current chapter is `SECTION_ACCEPTED`, GPT A must
   perform the Chapter Gate. At minimum, it checks chapter-level repetition,
   transitions, terminology consistency, citation distribution, argument
   closure, coverage of the chapter function in `docs/MASTER_THESIS_PLAN.md`,
   the interface to the next chapter, and any leakage of governance language,
   placeholders, or unauthorized evidence.
4. After GPT A passes the Chapter Gate, Codex creates
   `docs/chapter_handoffs/CHXX_HANDOFF.md` from
   `docs/CHAPTER_HANDOFF_TEMPLATE.md`, and updates
   `docs/CHAPTER_STATUS.md` and `docs/SUPERVISOR_CHECKPOINT.md`.
5. The handoff starts `SUCCESSOR_WINDOW_QUALITY_GATE`; it does not close the
   previous windows. The lifecycle is `CHAPTER_ACCEPTED` →
   `CHAPTER_HANDOFF_CREATED` → `SUCCESSOR_QUALIFICATION_PENDING` → Phase 1
   `RECOVERY_KNOWLEDGE_CHECK` → Phase 2 `OPERATIONAL_QUALIFICATION_CHECK` →
   Phase 3 `FINAL_CLOSURE_REPOSITORY_CHECK` → `SUCCESSOR_READY` → previous
   A/B windows `WINDOW_COMPLETE` → next-chapter formal authoring authorized.
6. New GPT A and GPT B windows must recover state from the GitHub governance
   files and the preceding handoff, not an old chat summary. Before any Task
   Card or writing task, they return `A<N>_SUCCESSOR_RECOVERY_REPORT` and
   `B<N>_SUCCESSOR_RECOVERY_REPORT` respectively, under the requirements in
   `docs/ACADEMIC_QUALITY_GATE.md`.
7. Passing Phase 1 records only `A<N>_RECOVERY_KNOWLEDGE_CHECK = PASSED` and
   `B<N>_RECOVERY_KNOWLEDGE_CHECK = PASSED`; it does not mean
   `SUCCESSOR_READY`. Phase 2 requires a qualification-only shadow repository
   review by GPT A and a real Markdown-file packet demonstration by GPT B.
   Neither authorizes next-chapter formal work.
8. When both operational qualifications pass, Codex creates a
   closure-candidate governance commit with `SUCCESSOR_QUALITY_GATE =
   CLOSURE_REPOSITORY_CHECK_PENDING`. The previous GPT A then reads the actual
   GitHub commit and returns `FINAL_WINDOW_CLOSURE_APPROVED` only after
   verifying the checkpoint, handoff, window states, no premature Task Card,
   no next-chapter body change, and no governance contradiction.
9. Only after that approval may Codex mark the prior A/B windows
   `WINDOW_COMPLETE`, record both successors `SUCCESSOR_READY`, and set
   `SUCCESSOR_QUALITY_GATE = PASSED`. The prior GPT A may not author the next
   chapter, issue its Task Card, or rewrite its prose. This rule applies to
   every chapter transition, including A1/B1 through A5/B5.

For exact successor prompts, operational tests, pass/retry criteria, and the
closure protocol, read `docs/SUCCESSOR_WINDOW_QUALITY_GATE.md`.

## 5. Mandatory Read Order

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
10. `docs/SUCCESSOR_WINDOW_QUALITY_GATE.md` when beginning a successor-window
    transition or its qualification.

GPT B additionally reads `docs/REFERENCE_THESIS_INDEX.md`. When the current
chapter has a handoff, read its matching file in `docs/chapter_handoffs/`
before working.

For GPT B packet delivery and Codex packet intake, read
`docs/GPTB_PACKET_WORKFLOW.md`. Every Task Card declares `GPTB_PACKET_PATH`;
both authoring-review modes use this same real Markdown-file handoff mechanism.

## 6. Fixed Quality Contract

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

## 7. Formal Section Lifecycle

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

## 8. Pipelined Section Review and Next-Task Issuance

Within the current chapter, use a pipelined section workflow by default to
reduce duplicate review without weakening any academic gate.

1. For a `DIRECT_REPO_REVIEW` section, GPT B completes the authorized packet and
   Gate A, after which the user may send that packet directly to Codex for
   mechanical integration. A separate GPT A prose pre-review is not required
   unless the user requests it or the task is escalated to
   `SUPERVISOR_PREAPPROVAL`.
2. After Codex integrates and pushes the section as
   `PENDING_SUPERVISOR_REPO_REVIEW`, GPT A reviews the actual GitHub version.
   In the same response, when section dependencies allow, GPT A should provide:
   - the current-section final decision (`SECTION_ACCEPTED` or
     `REVISION_REQUIRED`);
   - a scoped Codex correction prompt for any mechanical, LaTeX, citation-placement,
     status, or integration fixes that Codex is authorized to perform; and
   - the authorized GPT B Task Card / prompt for the next section so research and
     drafting can continue without waiting for a separate supervisor turn.
3. A Codex correction prompt must never be used to bypass GPT B authorship. If
   the defect is substantive academic writing, evidence interpretation, claim
   scope, argument logic, or another formal-body issue, GPT A sends the section
   back to GPT B for a revision packet. Codex may correct only mechanical or
   explicitly authorized minor integration issues.
4. Issuing the next GPT B task in the same turn is an efficiency measure, not an
   acceptance signal for the current section. It is allowed only when unresolved
   problems in the current section do not change the next section's facts,
   evidence boundaries, terminology, or argument interface. Otherwise GPT A
   withholds the next task until the dependency is resolved.
5. `SUPERVISOR_PREAPPROVAL` keeps its full approval boundary: Codex still waits
   for `CONTENT_APPROVED` before integration. After final repository review, the
   same combined-output pattern may be used to issue the next section when safe.
6. This pipeline is chapter-internal only. It must not pre-issue a formal Task
   Card for the next chapter before the current Chapter Gate, chapter handoff,
   and new-window recovery are complete.
7. The user may request a slower sequential review at any time; otherwise this
   pipelined mode is the default operating cadence for eligible sections.
