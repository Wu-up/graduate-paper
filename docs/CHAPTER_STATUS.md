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
| S1-02A | 1.2.1 基于CNN的医学图像分割方法 | CONTENT_APPROVED (R1_COMPLETE) | LATEX_INTEGRATED | PASSED | SECTION_ACCEPTED | GPT A repository final review passed; commit `7887af8d0b7f1089227af9aab770384232a4b2e2`. |
| S1-02B / S1-02B-R1 | 1.2.2 基于Transformer的医学图像分割方法 | DIRECT_REPO_REVIEW / GATE_A_PASSED (R1) | LATEX_INTEGRATED | PASSED | SECTION_ACCEPTED | S1-02B-R1 final repository review accepted; commit `6804852d6f49c8b7f09828461e6bcffc5b41e2a9`. |
| S1-02C | 1.2.3 基于高效长距离建模的医学图像分割方法 | DIRECT_REPO_REVIEW / GATE_A_PASSED | LATEX_INTEGRATED | PASSED | SECTION_ACCEPTED | GPT A repository final review passed; commit `1c30384eb7c3725d1e9ebfc69b189e34d44bbfcd`. |
| S1-02D | 1.2.4 基于多尺度与结构信息增强的医学图像分割方法 | DIRECT_REPO_REVIEW / GATE_A_PASSED | LATEX_INTEGRATED | PASSED | SECTION_ACCEPTED | Final repository review accepted; commit `1aeb00c159a1e19e8c5ad5113e6ed572b9826c2b`. |
| S1-02E | 1.2 国内外研究现状统一衔接与质量审查 | DIRECT_REPO_REVIEW / GATE_A_PASSED | LATEX_INTEGRATED | PASSED | SECTION_ACCEPTED | Supervisor repository review passed; accepted commit `6d338bf77184fa4b92c04c8aa2c64e10837c4ced`. |
| S1-03 | 1.3 现有方法存在的问题 | CONTENT_APPROVED | LATEX_INTEGRATED | PENDING | PENDING_SUPERVISOR_REPO_REVIEW | Awaiting supervisor repository final review. |
