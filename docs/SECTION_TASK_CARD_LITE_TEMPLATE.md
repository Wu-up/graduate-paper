# Section Task Card Lite Template

Use this for routine sections whose boundaries are clear and whose governing
rules are stable. It shortens repeated context; it does not reduce evidence or
writing standards.

```text
TASK_ID:
SECTION_ID:
SECTION_TITLE:
AUTHORING_MODE: DRAFT | REVISE | INTEGRATION_REVIEW
AUTHORING_REVIEW_MODE: DIRECT_REPO_REVIEW

MANDATORY_READ:
- docs/AI_AUTHORING_ENTRYPOINT.md
- docs/SUPERVISOR_CHECKPOINT.md
- docs/MASTER_THESIS_PLAN.md
- Task-specific authoritative documents:

SECTION_PURPOSE:
ARGUMENT_FLOW:
KEY_QUESTIONS:
MANDATORY_CONTENT:
FORBIDDEN_CONTENT:
LOCAL_EVIDENCE_REQUIREMENTS:
PRIORITY_REFERENCES:
SPECIAL_CLAIM_BOUNDARIES:
LINK_FROM_PREVIOUS:
LINK_TO_NEXT:
TARGET_LENGTH:
FIGURE_TABLE_FORMULA:
SPECIAL_STYLE_REQUIREMENTS:

OUTPUT:
- Source Packet
- Formal Body
- Author Notes
- CODEX_HANDOFF_PROMPT with READY_FOR_REPO_INTEGRATION

ACCEPTANCE_TEST:
All global writing, evidence, placeholder, citation and role rules are inherited
from `AI_AUTHORING_ENTRYPOINT.md` and its authoritative linked governance files.
A Lite Task Card shortens repetition, not the governing constraints.
`DIRECT_REPO_REVIEW` still requires GPT A's final GitHub repository review;
Codex records only `PENDING_SUPERVISOR_REPO_REVIEW` after integration.
```
