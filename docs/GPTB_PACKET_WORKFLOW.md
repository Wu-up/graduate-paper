# GPT B Markdown Packet Workflow

This is an entrypoint index for the cross-window GPT B-to-Codex delivery
contract. It governs packet location and intake only; it does not create or
replace thesis facts, formal body, citation evidence, or review authority.

## Local Packet Directory

The fixed local repository-workspace directory is `gptBmd/` (Windows example:
`Graduate Paper\gptBmd\`). It carries temporary Markdown research/formal-body
packets from GPT B to Codex. It is not a thesis fact source or a formal-body
directory.

## Naming Convention

Initial packets use `gptBmd/<TASK_ID>.md`, for example `gptBmd/S1-02D.md`.
Revisions use `gptBmd/<TASK_ID>-R1.md` and `gptBmd/<TASK_ID>-R2.md`, for
example `gptBmd/S1-02D-R1.md`. Always use the highest revision specified by the
Task Card or the user.

## GPT B Delivery Contract

After receiving a Section Task Card, GPT B must create a real Markdown file,
rather than only pasting long prose in chat. The packet contains: A. Source
Packet; B. 可入库正式正文; C. Author Notes; and D. `CODEX_HANDOFF_PROMPT`.
Its chat reply contains only `TASK_ID`, `STATUS`, and a Markdown attachment or
download link.

Under the default `DIRECT_REPO_REVIEW` workflow, GPT B completes Gate A and
hands off with `READY_FOR_REPO_INTEGRATION`; no separate GPT A prose pre-review
is required. `WAIT_FOR_SUPERVISOR_APPROVAL` is used only when the user has
explicitly selected the exceptional `SUPERVISOR_PREAPPROVAL` mode for that
specific section.

When GPT B can access the local thesis workspace, it writes the declared
`gptBmd/<TASK_ID>.md` path. Otherwise, it must generate a real `.md` attachment
for the user to save directly under `Graduate Paper\gptBmd\`; it must not
require manual copying of the formal body into a recreated Markdown file. Only
when file generation is unavailable may it report `FILE_CREATION_BLOCKED` and
fall back to chat body.

### A/B/C/D Content Boundary

- **A. Source Packet** may use internal evidence-governance language, including
  `Work1`/`Work2`, source provenance, conflicts, `SOURCE_NOT_REPORTED`, and
  `recovered code`.
- **B. 可入库正式正文** must pass the Formal Thesis Voice Firewall in
  `docs/WRITING_STYLE_GUIDE.md`. GPT B must not copy provenance, governance, or
  source-audit wording from A into B.
- **C. Author Notes** contains author-facing explanations of why information is
  omitted, where evidence is insufficient, and what requires later
  verification. If the user asks to retain such a reminder in `.tex`, Codex may
  convert it only to `%（作者核验备注：……）`; it must not render in the PDF.
- **D. `CODEX_HANDOFF_PROMPT`** identifies the permitted mechanical integration
  scope and must preserve the separation between the three preceding parts.

## Codex Input Contract

Codex reads the Task Card's declared `GPTB_PACKET_PATH`, for example
`gptBmd/S1-02D.md`, and must not ask the user to paste the GPT B body again. If
the declared file is absent, Codex returns `BLOCKED_MISSING_GPTB_PACKET`; it
does not guess prose, use an old version, recover from a chat summary, or
automatically select another task file. Both `DIRECT_REPO_REVIEW` and
`SUPERVISOR_PREAPPROVAL` use this same file-transfer mechanism.

The effective `AUTHORING_REVIEW_MODE` is the latest authoritative workflow
instruction, not necessarily the oldest marker preserved inside a local packet.
A later user instruction or GPT A Task-Card amendment recorded in current
repository governance supersedes a stale local packet marker. Therefore, when
a section is later changed from `SUPERVISOR_PREAPPROVAL` to
`DIRECT_REPO_REVIEW`, an older `WAIT_FOR_SUPERVISOR_APPROVAL` line in that
packet is no longer a blocking condition. Codex mechanically integrates the
existing Gate-A-passed Formal Body and records `PENDING_SUPERVISOR_REPO_REVIEW`;
it must not require a redundant `CONTENT_APPROVED` solely because the local
packet still contains the superseded marker.

## Repository Rule

`gptBmd/` content is `LOCAL_TRANSIENT_INPUT` and must not be committed to
GitHub. Codex must not use `git add -A` in this workflow. The repository ignores
`/gptBmd/`; this does not prevent Codex from reading local packets. Only an
explicit request to preserve an original review packet permits copying that
specified file to `docs/review_packets/`.

For successor GPT B operational qualification, see
`docs/SUCCESSOR_WINDOW_QUALITY_GATE.md`. Its qualification-only Markdown file
is not a formal packet, must not be integrated, and must not be committed.
