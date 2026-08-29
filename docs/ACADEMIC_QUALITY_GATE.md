# Academic Quality Gate

This gate protects quality in both authoring-review modes. Detailed content,
evidence, prose, equation-format, and citation-order rules remain in the
authoritative documents linked by `docs/AI_AUTHORING_ENTRYPOINT.md`.

## DIRECT_REPO_REVIEW

### Gate A — GPT B Draft Self-check

Before handoff, GPT B checks Task Card coverage, evidence-to-claim boundaries,
prose quality, placeholder exclusion, redundancy, the interface to the next
section, and the whole-thesis output constraints in `docs/WRITING_STYLE_GUIDE.md`.
For mathematical content, GPT B must distinguish inline mathematics from formal
displayed equations and must not invent hard-coded equation numbers. For
citations, multi-reference citation points must be prepared so they can render
as ascending numerical clusters under the project citation style.

### Gate B — Codex Mechanical Integration

Codex mechanically integrates the approved handoff package and checks
citations, BibTeX keys, equation numbering, compilation where available, and the
scoped diff. Codex records `EQUATION_NUMBERING_CHECK` and
`MULTI_CITATION_ORDER_CHECK`: formal displayed equations must use automatic
chapter-based numbering, textual equation references must use `\eqref`, and
multi-reference citation clusters must be checked in rendered output for
ascending numerical order and bibliography consistency. If local TeX is
unavailable, these checks must be performed through Overleaf or another
available project rendering path. The result is
`PENDING_SUPERVISOR_REPO_REVIEW`, never `SECTION_ACCEPTED`.

### Gate C — GPT A Repository Final Review

GPT A reviews the GitHub-integrated text for argument, evidence, citations,
prose, continuity, equation-numbering compliance, multi-reference citation
ordering, and unexpected integration changes. Only this passing gate grants
`SECTION_ACCEPTED`; otherwise it returns `REVISION_REQUIRED` or authorizes only
strictly mechanical correction when the academic body is already acceptable.

## SUPERVISOR_PREAPPROVAL

Gate A is GPT B's self-check. Gate B is GPT A's content review, whose only
outcomes are `CONTENT_APPROVED` and `REVISION_REQUIRED`. After Codex mechanical
integration, GPT A performs the repository final review before granting
`SECTION_ACCEPTED`. The same equation-numbering and citation-order constraints
apply in this mode.

## Chapter Gate

After S1-02's component sections are accepted, perform S1-02E unified review.
After all sections in a chapter are accepted, review chapter-level repetition,
transitions, terminology consistency, citation distribution, equation-number
sequence and formatting, multi-reference citation ordering, argument closure,
coverage of the chapter function in `docs/MASTER_THESIS_PLAN.md`, and the
interface to the next chapter. A passing review grants `CHAPTER_ACCEPTED`, after
which Codex may create the chapter handoff from
`docs/CHAPTER_HANDOFF_TEMPLATE.md`.

The Chapter Gate additionally records `CHAPTER_EQUATION_SEQUENCE_CHECK`; the
final whole-thesis gate records `WHOLE_THESIS_CITATION_SEQUENCE_CHECK`. These
checks apply to Chapters 1--5 and every later formal supplement, with formula
numbers restarting by chapter and bibliography numbers remaining continuous
through the thesis.

### SUCCESSOR_WINDOW_QUALITY_GATE

A passing Chapter Gate must be followed by creation of the chapter handoff and
`SUCCESSOR_QUALIFICATION_PENDING`; neither action closes the current A/B
windows. The gate has three ordered phases: `RECOVERY_KNOWLEDGE_CHECK`,
`OPERATIONAL_QUALIFICATION_CHECK`, and `FINAL_CLOSURE_REPOSITORY_CHECK`.
Neither Phase 1 nor Phase 2 authorizes formal next-chapter work.

`A<N>_SUCCESSOR_RECOVERY_REPORT` must demonstrate understanding of: the
whole-thesis central problem; Work1/Work2 progression; the new chapter's
function and scope; inherited terminology; authoritative facts and evidence
identities; open citation/source risks; forbidden claims and placeholders;
expected section structure and dependencies; likely
`DIRECT_REPO_REVIEW` versus `SUPERVISOR_PREAPPROVAL` sections; whole-thesis
equation numbering; sequential bibliography/citation order; GPT A/GPT B/Codex
role boundaries; and a proposed first-task direction without issuing a Task
Card.

`B<N>_SUCCESSOR_RECOVERY_REPORT` must demonstrate understanding of: its role
boundary and governance read set; the current chapter argument; Work1/Work2
evidence identity; source risks and forbidden unsupported claims; the GPT B
packet workflow and its Source Packet, Formal Body, Author Notes, and
`CODEX_HANDOFF` structure; the `SUPERVISOR_PREAPPROVAL` versus
`DIRECT_REPO_REVIEW` boundary; equation and citation output constraints; the
prohibition on modifying GitHub; and the requirement to await an authorized GPT
A Task Card.

Passing the reports records only `A<N>_RECOVERY_KNOWLEDGE_CHECK = PASSED` and
`B<N>_RECOVERY_KNOWLEDGE_CHECK = PASSED`. It does not record
`SUCCESSOR_READY`.

For Phase 2, the successor GPT A completes a qualification-only shadow review
of an actual GitHub integration commit. It must inspect repository content,
equations, citations, status records, and scoped diff against governance and
evidence boundaries; distinguish academic defects from mechanical defects;
route academic defects to GPT B and strictly mechanical defects to Codex;
avoid asking Codex to rewrite substantive prose; decide
`SECTION_ACCEPTED`/`REVISION_REQUIRED` correctly; and state what must be
rechecked after a mechanical cleanup.

The successor GPT B supplies a real Markdown attachment/file, not chat-only
prose and not a formal next-chapter packet. It must demonstrate delivery and
packet organization, formal academic Chinese quality, anti-template/anti-AI
style controls, and evidence-boundary discipline. Formal body must preserve
the accepted Chapter 1/2 style: no bold mini-headings, mechanical enumeration,
repetitive summaries, slogans, generic importance claims, unsupported efficacy
or statistical claims, author-by-author listing, result paraphrase without
analysis, software-manual method prose, repeated textbook theory, excessive
microsections, repeated templates, or governance language. Each paragraph has
a clear argument role; method prose follows problem → design reason →
information flow → definition → architectural relation → evidence-bounded
role, while experimental prose connects phenomenon → quantitative difference
→ method relation → supported hypothesis → limitation or cost.

When both Phase 2 qualifications pass, Codex creates a closure-candidate
governance commit with `A<N> = QUALIFICATION_PASSED`,
`B<N> = QUALIFICATION_PASSED`, and `SUCCESSOR_QUALITY_GATE =
CLOSURE_REPOSITORY_CHECK_PENDING`. The prior GPT A reviews that actual GitHub
commit for checkpoint, handoff, states, current chapter, no premature Task
Card/body change, and no governance contradiction. Only its explicit
`FINAL_WINDOW_CLOSURE_APPROVED` permits Codex to mark prior A/B
`WINDOW_COMPLETE`, successors `SUCCESSOR_READY`, and the gate `PASSED`.
