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
citations, BibTeX keys, compilation where available, and the scoped diff. The
result is `PENDING_SUPERVISOR_REPO_REVIEW`, never `SECTION_ACCEPTED`.

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

### Window Closure

A passing Chapter Gate must be followed by creation of the chapter handoff.
After the handoff and checkpoint update are complete:

- current GPT A window = `WINDOW_COMPLETE`;
- current GPT B window = `WINDOW_COMPLETE`;
- the next chapter begins in new A/B windows.

The previous windows may perform one migration-verification turn only when the
user explicitly requests it; they do not become the supervisor or writer of the
next chapter.
