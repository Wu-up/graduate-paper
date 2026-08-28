# Academic Quality Gate

This gate protects quality when a Lite Task Card is used. Detailed content,
evidence, and prose rules remain in the authoritative documents linked by
`docs/AI_AUTHORING_ENTRYPOINT.md`.

## Gate A — GPT B Draft Self-check

Before handoff, GPT B checks that the draft answers its Task Card questions,
has no unsupported strong claims, is not an author-year list, avoids template
AI phrasing, does not misuse placeholders, does not repeat the preceding
section, and leaves a logical interface for the next section.

## Gate B — GPT A Content Review

GPT A reviews the argument chain, evidence-to-claim mapping, prose naturalness,
thesis role, redundancy, terminology, Work1/Work2 positioning, citation
adequacy, and strength of major claims. The only outcomes are
`CONTENT_APPROVED` and `REVISION_REQUIRED`.

## Gate C — Repository Final Review

After Codex integration, GPT A checks the final GitHub body against the approved
content, citation correctness, BibTeX/LaTeX mechanics, continuity with adjacent
sections, and unexpected changes. Only a passing review grants
`SECTION_ACCEPTED`.

## Chapter Gate

After all sections are accepted, review chapter-level repetition, transitions,
terminology consistency, citation distribution, argument closure, coverage of
the chapter function in `docs/MASTER_THESIS_PLAN.md`, and the interface to the
next chapter. A passing review grants `CHAPTER_ACCEPTED`, after which Codex may
create the chapter handoff from `docs/CHAPTER_HANDOFF_TEMPLATE.md`.
