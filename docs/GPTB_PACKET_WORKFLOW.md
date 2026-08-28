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

When GPT B can access the local thesis workspace, it writes the declared
`gptBmd/<TASK_ID>.md` path. Otherwise, it must generate a real `.md` attachment
for the user to save directly under `Graduate Paper\gptBmd\`; it must not
require manual copying of the formal body into a recreated Markdown file. Only
when file generation is unavailable may it report `FILE_CREATION_BLOCKED` and
fall back to chat body.

## Codex Input Contract

Codex reads the Task Card's declared `GPTB_PACKET_PATH`, for example
`gptBmd/S1-02D.md`, and must not ask the user to paste the GPT B body again. If
the declared file is absent, Codex returns `BLOCKED_MISSING_GPTB_PACKET`; it
does not guess prose, use an old version, recover from a chat summary, or
automatically select another task file. Both `DIRECT_REPO_REVIEW` and
`SUPERVISOR_PREAPPROVAL` use this same file-transfer mechanism.

## Repository Rule

`gptBmd/` content is `LOCAL_TRANSIENT_INPUT` and must not be committed to
GitHub. Codex must not use `git add -A` in this workflow. The repository ignores
`/gptBmd/`; this does not prevent Codex from reading local packets. Only an
explicit request to preserve an original review packet permits copying that
specified file to `docs/review_packets/`.
