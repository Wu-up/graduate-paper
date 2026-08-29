# Academic Quality Gate

This gate protects quality in both authoring-review modes. Detailed content,
evidence, and prose rules remain in the authoritative documents linked by
`docs/AI_AUTHORING_ENTRYPOINT.md`.

## DIRECT_REPO_REVIEW

### Gate A — GPT B Draft Self-check

Before handoff, GPT B checks Task Card coverage, evidence-to-claim boundaries,
prose quality, placeholder exclusion, redundancy, and the interface to the next
section.

### Gate B — Codex Mechanical Integration

Codex mechanically integrates the approved handoff package and checks
citations, BibTeX keys, compilation where available, and the scoped diff. For
every formal-body integration, Codex also records `EQUATION_NUMBERING_CHECK`
and `MULTI_CITATION_ORDER_CHECK`: standalone equations must be automatically
numbered in the current chapter, equation references must use `\eqref`, and
each semantic multi-reference citation cluster must render in ascending
whole-thesis numeric order. The result is `PENDING_SUPERVISOR_REPO_REVIEW`,
never `SECTION_ACCEPTED`.

### Gate C — GPT A Repository Final Review

GPT A reviews the GitHub-integrated text for argument, evidence, citations,
prose, continuity, and unexpected integration changes. Only this passing gate
grants `SECTION_ACCEPTED`; otherwise it returns `REVISION_REQUIRED`.

## SUPERVISOR_PREAPPROVAL

Gate A is GPT B's self-check. Gate B is GPT A's content review, whose only
outcomes are `CONTENT_APPROVED` and `REVISION_REQUIRED`. After Codex mechanical
integration, GPT A performs the repository final review before granting
`SECTION_ACCEPTED`.

## Chapter Gate

After S1-02's component sections are accepted, perform S1-02E unified review.
After all sections in a chapter are accepted, review chapter-level repetition, transitions,
terminology consistency, citation distribution, argument closure, coverage of
the chapter function in `docs/MASTER_THESIS_PLAN.md`, and the interface to the
next chapter. A passing review grants `CHAPTER_ACCEPTED`, after which Codex may
create the chapter handoff from `docs/CHAPTER_HANDOFF_TEMPLATE.md`.

The Chapter Gate additionally records `CHAPTER_EQUATION_SEQUENCE_CHECK`; the
final whole-thesis gate records `WHOLE_THESIS_CITATION_SEQUENCE_CHECK`. These
checks apply to Chapters 1--5 and every later formal supplement, with formula
numbers restarting by chapter and bibliography numbers remaining continuous
through the thesis.

### Window Closure

A passing Chapter Gate must be followed by creation of the chapter handoff.
After the handoff and checkpoint update are complete:

- current GPT A window = `WINDOW_COMPLETE`;
- current GPT B window = `WINDOW_COMPLETE`;
- the next chapter begins in new A/B windows.

The previous windows may perform one migration-verification turn only when the
user explicitly requests it; they do not become the supervisor or writer of the
next chapter.
