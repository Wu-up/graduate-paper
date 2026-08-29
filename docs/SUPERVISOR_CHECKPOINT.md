# Supervisor Checkpoint

## Current Phase

`FORMAL_DRAFTING`

## Current Chapter

Chapter 3 — 基于Vision-xLSTM局部--全局协同建模的三维医学图像分割方法

## Last Completed Chapter

Chapter 2 — 三维医学图像分割相关理论与关键技术

## Chapter 1 Gate

`PASSED`

## Last Accepted Sections

- `S1-01`, `S1-02A`, `S1-02B-R1`, `S1-02C`, `S1-02D`, `S1-02E`, `S1-03`, `S1-04`, `S1-05-R1`, `S1-06`, `S2-01` through `S2-06`, `S3-01`, `S3-02`, `S3-03`, `S3-04`, and `S3-05` are `SECTION_ACCEPTED`.
- Chapter 3 current method sections: `S3-01 through S3-05 = SECTION_ACCEPTED`.
- LAST_ACCEPTED_SECTION: `S3-05 / 3.5 解码与特征融合`.
- `S1-05-R1` accepted commit: `cfd0fb5e42d3458e6aff21c0c35f4fe9c6181b9a`.
- `S1-06` accepted commit: `58ecc4ab8cd2b6960a7ade8fa356318cece86d80`.
- `S2-01` accepted commit: `ae7857ed8a8ce88e601bf84f9cf0862ffd08217c`.
- `S2-02` accepted commit: `9d7af062d7cbd541b5615ef536e3b3b8cecac931`; final spacing cleanup: `c21233e885a9f9b51c5fb0e434187642fc6213fe`.
- `S2-03` accepted commit: `320d276b4b946a32a029e21b978871939932d556`; final spacing cleanup: `d070c0e1ef81051b1b92ab56f49756971fe407c0`.
- `S2-04` integration commit: `1955a1b4cca01102a7a5221c196e6cead2174da8`; final spacing cleanup: `69400271b782399ee53cbf125469c6ac81e5f4f4`.
- `S2-05-R1` integration commit: `6c52a3afc0d7b786af6efef7d553462174b16f76`; final LaTeX/status cleanup: `20397a685c1e06cc94e5ee6b04d1e7307ec5cb8b`.
- `S2-05-R2` late quality correction: `CONTENT_APPROVED / LATEX_INTEGRATED / FINAL_REPOSITORY_REVIEW_PASSED / SECTION_ACCEPTED`; integration commit `195be005afbf4604db4db6937c45c2efd11709cd` removed the obsolete Params/FLOPs/Peak VRAM/inference-time inequality equation without reopening Chapter 2.
- `S3-01` accepted commit: `600142d353b632bb8cb8c01f12e91a5f83e89756`.
- `S3-02` accepted commit: `d642ad3802653e3cf5545548c0bdf879edd4e912`.
- `S3-03` accepted commit: `35e4e80d4265bc14cb21567e5c0731f3b1de256e`.
- `S3-04` accepted commit: `fc91a4ac1b92767cd3a53fded7f8d3848bad6d20`.
- `S3-05` accepted commit: `11733093cd3785ab27301c3b16dfbaa7bf0dc301`.

## Chapter 2 Closure State

`CHAPTER_2_FINAL_CLOSURE = COMPLETE / CHAPTER_ACCEPTED`

- `CHAPTER_2_ACADEMIC_GATE = PASSED`
- `CHAPTER_2_FORMAT_QA = PASSED`
- `A3_RECOVERY_KNOWLEDGE_CHECK = PASSED`
- `B3_RECOVERY_KNOWLEDGE_CHECK = PASSED`
- `A3_OPERATIONAL_QUALIFICATION = PASSED`
- `B3_OPERATIONAL_QUALIFICATION = PASSED`
- `FINAL_CLOSURE_REPOSITORY_CHECK = PASSED`
- `FINAL_WINDOW_CLOSURE_APPROVAL = APPROVED`
- `SUCCESSOR_QUALITY_GATE = PASSED`
- `A2 = WINDOW_COMPLETE`
- `B2 = WINDOW_COMPLETE`
- `A3 = SUCCESSOR_READY / ACTIVE_SUPERVISOR`
- `B3 = SUCCESSOR_READY / ACTIVE_WRITER`

Chapter 3 remains `IN_PROGRESS`. Next Action: continue the authorized Chapter 3
section pipeline. Codex must not create or select Task Cards, but it may
mechanically integrate an A3-authorized, Gate-A-passed GPT B packet under the
default direct-repository-review workflow.

## Chapter 3 Review Pipeline

- `CHAPTER_3_DEFAULT_AUTHORING_REVIEW_MODE = DIRECT_REPO_REVIEW`.
- For Chapter 3, the normal route is `A3 Task Card -> B3 packet / Gate A ->
  Codex mechanical integration + GitHub push -> PENDING_SUPERVISOR_REPO_REVIEW
  -> A3 actual-GitHub final review`.
- This default applies to Full cards, core methods, experiments, ablations,
  high-risk evidence, and source-conflict sections. Those labels do not by
  themselves create a preapproval gate.
- `SUPERVISOR_PREAPPROVAL` is used only when the user explicitly requests that
  exception for a specific section.
- `S3-02 AUTHORING_REVIEW_MODE_OVERRIDE = DIRECT_REPO_REVIEW`.
- `S3-02 PACKET_STATUS_OVERRIDE = READY_FOR_REPO_INTEGRATION`.
- The earlier local `gptBmd/S3-02.md` markers
  `SUPERVISOR_PREAPPROVAL / WAIT_FOR_SUPERVISOR_APPROVAL` are superseded by this
  later A3 workflow amendment. They are not a current blocking condition and do
  not require a redundant `CONTENT_APPROVED`.
- Codex may integrate the existing Gate-A-passed S3-02 Formal Body mechanically,
  perform citation/BibTeX/LaTeX/figure/diff checks, push GitHub/Overleaf as
  applicable, and record only `PENDING_SUPERVISOR_REPO_REVIEW`. Codex may not
  grant `SECTION_ACCEPTED`.

## Controlled Figure Backfill

- `S3-02` remains `SECTION_ACCEPTED`. Authentic Work1 Fig. 1 has not been
  materialized as a local reusable asset; any later provenance-preserving figure
  backfill must not reopen the accepted formal body or alter its evidence scope.
- `S3-04` remains `SECTION_ACCEPTED`. Authentic Work1 Fig. 1 / Fig. 2
  thesis-local asset materialization remains pending; any later
  provenance-preserving controlled backfill must not reopen the accepted formal
  body or alter its evidence scope.
- `S3-05` remains `SECTION_ACCEPTED`. Authentic Work1 Fig. 1 thesis-local
  asset materialization remains pending; any later provenance-preserving
  controlled backfill must not reopen the accepted formal body or alter its
  evidence scope.

## Frozen Decisions

- The thesis uses the frozen five-chapter structure.
- Sections 1.2.1--1.2.4 are collectively frozen after the S1-02E unified
  review.
- Work1 is local--global collaboration in the spatial dimension; Work2 is
  scale-structural coordination.
- Work1 ACDC LV is 96.56 under its recorded `PAPER_REPORTED` identity.
- Work1 is `PUBLICATION_PENDING`; its DOI is `DOI_NOT_YET_AVAILABLE`.
- HD95 theory is sourced through `taha2015metrics`.
- Work2 final results remain `THESIS_PLACEHOLDER`; R2 is formal pre-study
  evidence, not final efficacy.
- The current Full SSSM HD95 placeholder is 12.78 mm. The legacy 12.17 mm
  value must not be used.

For provenance, evidence identity, and complete numeric tables, read
`docs/FACTS_AND_NUMBERS.md` and `docs/PLACEHOLDER_LEDGER.md`.

## Open Risks

The current open items are the Work1 final DOI, concrete Work1 complexity
claim, Synapse/BTCV protocol, final HD95 implementation, and final Work2
experimental evidence. Their exact boundaries and closure triggers are in
`docs/CITATION_AND_SOURCE_RISK_LOG.md`.

## Read First

Start with `docs/AI_AUTHORING_ENTRYPOINT.md`, then follow its mandatory read
order. For detailed project status, use `docs/CHAPTER_STATUS.md`; for the
current chapter plan, use `docs/MASTER_THESIS_PLAN.md`.

## Update Rule

Codex updates this checkpoint only at `SECTION_ACCEPTED`, after a completed
chapter, when a core scientific decision changes, when new evidence closes a
major risk, or before switching GPT A windows. Small edits do not require a
checkpoint update.
