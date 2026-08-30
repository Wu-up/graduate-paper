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

#### FORMAL_BODY_VOICE_CHECK

Gate A must confirm that visible formal-body `Work1` and `Work2` counts are
zero, except where an explicit public model-name exception applies; visible
`recovered code` and governance/evidence-audit terminology counts are zero;
Source Packet language has not leaked into the Formal Body; repeated “本节不”,
“不在本节”, “后续将”, or “为了避免” meta-writing does not form a pattern; and a
self-publication citation is not repeated paragraph by paragraph. A violation
means Gate A does not pass.

### Gate B — Codex Mechanical Integration

Codex mechanically integrates the Gate-A-passed GPT B handoff package and
checks citations, BibTeX keys, equation numbering, compilation where available,
and the scoped diff. A separate GPT A prose pre-review is not required in this
mode. Codex records `EQUATION_NUMBERING_CHECK` and
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

#### FORMAL_BODY_VOICE_CHECK

Gate C repeats the Formal Thesis Voice Firewall review on the GitHub-integrated
visible body: `Work1 = 0`, `Work2 = 0`, `recovered code = 0`, and visible
governance/evidence-audit terminology = 0, subject only to an explicit public
model-name exception. It also checks that Source Packet wording has not leaked,
that “本节不”/“不在本节”/“后续将”/“为了避免” do not form a repeated meta-writing
pattern, and that self-publication citations are not used paragraph by
paragraph to prove the thesis's own method. Any violation returns
`REVISION_REQUIRED`; Gate C must not pass.

## SUPERVISOR_PREAPPROVAL

`SUPERVISOR_PREAPPROVAL` is an explicit exception mode, not an automatic
requirement for Full cards, core-method sections, experiments, ablations,
high-risk claims, or source conflicts. Use it only when the user explicitly
requests preapproval for that section. When selected, Gate A is GPT B's
self-check, Gate B is GPT A's content review, whose only outcomes are
`CONTENT_APPROVED` and `REVISION_REQUIRED`. After Codex mechanical integration,
GPT A performs the repository final review before granting `SECTION_ACCEPTED`.
The same equation-numbering and citation-order constraints apply in this mode.

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

Phase 1 recovery reports, Phase 2 operational tests and pass/retry criteria,
the closure-candidate protocol, and Phase 3 approval requirements are governed
only by `docs/SUCCESSOR_WINDOW_QUALITY_GATE.md`. A Phase 1 or Phase 2 pass is
not `SUCCESSOR_READY`; only `FINAL_WINDOW_CLOSURE_APPROVED` permits final
window closure.
