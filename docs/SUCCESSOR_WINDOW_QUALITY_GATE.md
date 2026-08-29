# Successor Window Quality Gate

## Authority and Scope

This is the authoritative operational manual for cross-window successor
qualification. It applies automatically to A1/B1 → A2/B2, A2/B2 → A3/B3,
A3/B3 → A4/B4, A4/B4 → A5/B5, and later intentionally separated thesis
windows. Reading the correct files is necessary but insufficient: successor
readiness requires demonstrated ability to perform the actual role, so that
context-window replacement does not degrade academic quality.

`docs/AI_AUTHORING_ENTRYPOINT.md` defines the high-level lifecycle,
`docs/ACADEMIC_QUALITY_GATE.md` summarizes its gate, and
`docs/CHAPTER_HANDOFF_TEMPLATE.md` records its state. This manual owns the
operational prompts, test requirements, pass/retry criteria, and closure
protocol. `docs/chapter_handoffs/CH01_HANDOFF.md` is a historical record and
must not be rewritten to claim that this full three-phase test was completed
during A1→A2; the strengthened procedure is formally enforced from A2→A3/B3.

## Authoritative Lifecycle

`CURRENT CHAPTER ALL SECTIONS ACCEPTED` → `CURRENT CHAPTER GATE PASSED` →
chapter format/equation/citation QA passed when applicable →
`CHAPTER_HANDOFF_CREATED` → `SUCCESSOR_QUALIFICATION_PENDING` → Phase 1
`RECOVERY_KNOWLEDGE_CHECK` → Phase 2 `OPERATIONAL_QUALIFICATION_CHECK` →
Codex closure-candidate governance commit with
`SUCCESSOR_QUALITY_GATE = CLOSURE_REPOSITORY_CHECK_PENDING` → Phase 3
`FINAL_CLOSURE_REPOSITORY_CHECK` → `FINAL_WINDOW_CLOSURE_APPROVED` → final
minimal closure commit → prior A/B `WINDOW_COMPLETE`, successor A/B
`SUCCESSOR_READY`, and `SUCCESSOR_QUALITY_GATE = PASSED` → new GPT A may issue
the first formal next-chapter Task Card.

No earlier phase authorizes formal next-chapter writing, a Task Card, Codex
integration authorization, or successor GitHub modification.

## Phase 1 — Recovery Knowledge Check

### Successor GPT A

The successor returns `A<N>_SUCCESSOR_RECOVERY_REPORT`, demonstrating—not just
asserting that it read files—understanding of repository and governance state,
the whole-thesis argument, Work1→Work2 progression, previous and new chapter
functions, frozen structure, authoritative facts and evidence identities,
unresolved citation/source risks, placeholders and forbidden claims, chapter
dependencies, likely `DIRECT_REPO_REVIEW`/`SUPERVISOR_PREAPPROVAL` risk
distribution, equation and citation numbering, role boundaries, and a proposed
first-task direction without issuing a Task Card.

The prior GPT A returns only `A<N>_RECOVERY_KNOWLEDGE_CHECK = PASSED` or
`RETRY_REQUIRED` with targeted recovery corrections.

### Successor GPT B

The successor returns `B<N>_SUCCESSOR_RECOVERY_REPORT`, demonstrating GPT B's
role, current chapter argument, evidence identities and source-risk boundaries,
forbidden inferences, the A/B/C/D packet workflow, both review modes, equation
and citation output rules, formal academic style, no-GitHub-modification rule,
and the requirement to await an authorized GPT A Task Card.

The prior GPT A returns only `B<N>_RECOVERY_KNOWLEDGE_CHECK = PASSED` or
`RETRY_REQUIRED`. Phase 1 pass is not `SUCCESSOR_READY`.

## Phase 2 — Operational Qualification Check

### A<N> Operational Test

The prior GPT A assigns a qualification-only
`A<N>_OPERATIONAL_QUALIFICATION_TEST` using an actual historical repository
integration commit, preferably a pre-cleanup/pre-final-review commit with
sufficient material for judgment. The test prompt must not disclose known
historical defects. The successor independently reads the commit diff, actual
`.tex`, relevant references, status records, governing facts/evidence risks,
equation/citation state, and unexpected diff scope; it must not rely on a
Codex summary.

It classifies every finding as `ACADEMIC_SUBSTANTIVE`, `MECHANICAL_LATEX`,
`MECHANICAL_CITATION`, `MECHANICAL_STATUS`, or `NO_ISSUE`. Academic substantive
issues route to GPT B revision; strictly mechanical issues route to Codex.
Codex must never be used to bypass GPT B for argument logic, evidence
interpretation, claim scope, method explanation, or formal academic rewriting.
The output specifies the historical section decision and post-cleanup rechecks,
and ends only with `A<N>_OPERATIONAL_TEST_STATUS:
READY_FOR_PREVIOUS_A_REVIEW`; it must not self-declare a pass.

The prior GPT A verifies that the successor read the target, found expected
material high-risk defects without inventing nonexistent substantive defects,
separated and routed issues correctly, preserved evidence boundaries, checked
status/governance and equation/citation implications, did not authorize Codex
to rewrite academic prose, made an appropriate historical decision, and named
the appropriate post-fix recheck. It returns
`A<N>_OPERATIONAL_QUALIFICATION = PASSED` or `RETRY_REQUIRED`.

### B<N> Operational Test

The prior GPT A assigns `B<N>_OPERATIONAL_QUALIFICATION_TEST`. The successor
GPT B creates a real `B<N>_OPERATIONAL_QUALIFICATION.md` file labelled
`QUALIFICATION_ONLY`, `NOT_A_FORMAL_GPTB_PACKET`, `DO_NOT_INTEGRATE`, and
`DO_NOT_COMMIT`. A chat-only response does not pass. The file demonstrates the
delivery contract, safe evidence-gap handling, a controlled formal-Chinese
prose sample, substantive self-audit, and readiness for future formal packets.

The sample is 450–700 Chinese characters, uses only accepted transition logic,
requires no new facts, and does not become next-chapter prose. The prior GPT A
selects its topic; a suitable type explains why the next chapter moves from an
established interface into a specific problem–method–evidence loop.

The sample fails or retries if it materially uses bold micro-headings,
colon-led mini-sections, mechanical first/second/third/finally organization,
repeated three-part templates, generic filler, empty summaries, slogans,
“具有重要意义”, unsupported “有效提升”/“明显改善”/“充分证明”/“显著”,
author-by-author listing, result narration without analysis, software-manual
method description, repeated textbook theory, excessive obvious-concept
explanation, governance terminology in formal prose, repeated conclusions, or
paragraphs without an argumentative role. Passing prose is formal, restrained,
natural, problem-driven, evidence-bounded, paragraph-focused, and information
dense. Method prose follows problem → design reason → information/data flow →
structural/mathematical definition → architectural relation → evidence-bounded
role; experimental prose follows phenomenon → quantitative difference → method
relation → supported hypothesis → limitation, exception, or cost.

The Markdown self-audit covers micro-headings, mechanical enumeration,
three-part templates, unsupported intensifiers, repeated conclusions,
textbook expansion, governance-language leakage, and paragraph function. It
identifies the sentence most likely to sound templated and revises it before
delivery where needed. The prior GPT A also verifies a real file exists, the
role/status is correct, no GitHub change or fake formal `TASK_ID` exists, no
`READY_FOR_REPO_INTEGRATION` is claimed, evidence handling is safe, the sample
meets thesis style, and the A/B/C/D packet and review-mode boundaries are
understood. It returns `B<N>_OPERATIONAL_QUALIFICATION = PASSED` or
`RETRY_REQUIRED`.

### Formal GPT B Delivery Contract

Formal work uses a real `gptBmd/<TASK_ID>.md`, and revisions use
`gptBmd/<TASK_ID>-R1.md`, `-R2.md`, and so on. It contains A. Source Packet;
B. 可入库正式正文; C. Author Notes; and D. `CODEX_HANDOFF_PROMPT`. Chat normally
contains only `TASK_ID`, `STATUS`, and the real Markdown attachment/link. If
repository-local writing is unavailable, GPT B supplies a real `.md`
attachment; the user must not reconstruct long prose manually. `gptBmd/` is
`LOCAL_TRANSIENT_INPUT` and is never committed absent explicit preservation
authority.

## Retry Rule

Qualification retry is not a thesis-writing failure. The prior GPT A supplies
only targeted qualification corrections; the successor rereads only relevant
governance and resubmits only the failed component. Passed components are not
restarted unnecessarily. No Task Card, formal prose integration, or
next-chapter writing begins during retry.

## Phase 3 — Final Closure Repository Check

After both Phase 2 decisions are `PASSED`, Codex creates a status/governance
only closure-candidate commit with `A<N> = QUALIFICATION_PASSED`,
`B<N> = QUALIFICATION_PASSED`, and `SUCCESSOR_QUALITY_GATE =
CLOSURE_REPOSITORY_CHECK_PENDING`. Prior A/B remain
`SUCCESSOR_QUALIFICATION_PENDING`.

The prior GPT A reads the actual GitHub closure-candidate commit and verifies:
handoff and completed-chapter status; current/next chapter transition;
checkpoint; qualification states; no self-granted `SUCCESSOR_READY` or
premature `WINDOW_COMPLETE`; no next-chapter Task Card/body change; no
unexpected files, governance contradiction, or committed transient
qualification artifact. It returns only `FINAL_WINDOW_CLOSURE_APPROVED` or
`FINAL_WINDOW_CLOSURE_RETRY_REQUIRED`.

Only an approval authorizes Codex's final minimal status/governance commit:
prior GPT A/B = `WINDOW_COMPLETE`, successor GPT A/B = `SUCCESSOR_READY`, and
`SUCCESSOR_QUALITY_GATE = PASSED`, with the active chapter switched when
appropriate. It must not write prose, create/select the first Task Card, or
modify method content. The new GPT A then independently issues that Task Card.

## Prior-Window Boundaries

The prior GPT A remains active only to review recovery reports, construct and
review qualification tests, review operational outputs, and approve/reject the
closure-candidate commit. It may not write the next chapter, issue its first
Task Card, rewrite successor prose, or supervise the next chapter after final
closure. The prior GPT B performs no next-chapter writing; it remains
administratively open only until paired closure.
