# Chapter Status

## P-002 Directory Freeze V1.0

The thesis directory was frozen as a five-chapter architecture in P-002. "Frozen" means later drafting proceeds by this structure by default; it does not prohibit a reasoned revision based on real experimental evidence or supervisor direction.

| Chapter | File | Structure Status | Writing Status | Notes |
|---|---|---|---|---|
| 1 绪论 | `chapters/ch01_introduction.tex` | FROZEN_V1.0 | IN_PROGRESS | S1-01 is accepted; remaining sections continue under the frozen Work1/Work2 progression. |
| 2 三维医学图像分割相关理论与关键技术 | `chapters/ch02_background.tex` | FROZEN_V1.0 | PLANNED | Theory-debt scope only. |
| 3 基于Vision-xLSTM局部--全局协同建模的三维医学图像分割方法 | `chapters/ch03_vil_unet.tex` | FROZEN_V1.0 | PLANNED | Work1 complete loop: problem, method, experiment, analysis, conclusion. |
| 4 基于尺度特异结构证据调制的三维医学图像分割方法 | `chapters/ch04_scale_specific.tex` | FROZEN_V1.0 | PLANNED | Work2 complete loop; R2 is FORMAL PRE-STUDY EVIDENCE, not final efficacy. |
| 5 总结与展望 | `chapters/ch05_conclusion.tex` | FROZEN_V1.0 | PLANNED | Mirrors Section 1.4; no independent unified experiment chapter. |

## Evidence Guardrail

- All Work2 final values remain `THESIS_PLACEHOLDER` until verified evidence changes their identity.
- The separate `实验结果与讨论` chapter has been removed because Work1 and Work2 each own their experimental closure.
- Formal drafting requires a completed Section Task Card.

## P-003 Literature Evidence Governance

| Item | Status | Notes |
|---|---|---|
| P-003A literature research | CONDITIONALLY_APPROVED | 31 core references and 10 candidate references; allowed for governance ingestion. |
| P-003B first attempt | BLOCKED_MISSING_SOURCE_PACKET | No complete P-003A Markdown packet was available in that turn. |
| P-003B-R1 literature pool ingestion | COMPLETE | `docs/LITERATURE_EVIDENCE_POOL.md` and `docs/CITATION_AND_SOURCE_RISK_LOG.md` created. |

Pending Evidence Resolution:

- Work1 final publication DOI: waiting for formal publication / IEEE Xplore.
- Final HD95 implementation: waiting for final code or software protocol.
- Final loss protocol: waiting for final experiment protocol.
- Efficiency measurement protocol: waiting for final experiment protocol.

Resolved in P-003B-R1:

- Work1 ACDC LV corrected from `96.65` to `96.56` using Work1 original paper
  Table II.

## Section Integration Status

| Section ID | Section Title | Academic Review | LaTeX Integration | Final Review | Final Status | Notes |
|---|---|---|---|---|---|---|
| S1-01 | 1.1 研究背景与意义 | CONTENT_APPROVED | LATEX_INTEGRATED | PASSED | SECTION_ACCEPTED | Final repository review passed; commit `14204f845819b2d0601c771a2eec2d2f28777da6`. |
