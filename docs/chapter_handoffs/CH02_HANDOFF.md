# Chapter 2 Handoff

## Chapter Identity

- Chapter: Chapter 2 — 三维医学图像分割相关理论与关键技术
- Source: `chapters/ch02_background.tex`
- Status: `COMPLETE / CHAPTER_ACCEPTED`
- Chapter Academic Gate: `PASSED`
- Whole-thesis format QA: `PASSED`

## Chapter Function in Whole Thesis

Chapter 2 pays the shared theory debt for the two progressive method chapters;
it does not present a new method or experimental conclusion. It establishes a
common vocabulary for three-dimensional voxel-level segmentation, local 3D
convolution and U-shaped encoder--decoder hierarchies, long-range context
modeling, Vision-xLSTM-related visual sequence modeling, multi-scale feature
and scale-structural information, and the bounded definitions of loss and
evaluation metrics. These concepts provide the interfaces used by Chapter 3's
spatial local--global collaboration (Work1) and Chapter 4's scale-structural
coordination (Work2).

## Final Accepted Structure

1. 2.1 三维医学图像与分割任务
2. 2.2 卷积神经网络与U形编码器--解码器
   - 2.2.1 三维卷积与局部特征提取
   - 2.2.2 U-Net编码器--解码器与跳跃连接
3. 2.3 长距离上下文建模
   - 2.3.1 Transformer与自注意力机制
   - 2.3.2 xLSTM与Vision-xLSTM
4. 2.4 多尺度特征与尺度结构信息
5. 2.5 损失函数与评价指标
   - 2.5.1 分割损失函数
   - 2.5.2 分割精度指标
   - 2.5.3 模型效率指标
6. 2.6 本章小结

## Accepted Sections

| Section | Title | Status | Final Commit |
|---|---|---|---|
| S2-01 | 2.1 三维医学图像与分割任务 | `SECTION_ACCEPTED` | `ae7857ed8a8ce88e601bf84f9cf0862ffd08217c` |
| S2-02 | 2.2 卷积神经网络与U形编码器--解码器 | `SECTION_ACCEPTED` | review `9d7af062d7cbd541b5615ef536e3b3b8cecac931`; cleanup `c21233e885a9f9b51c5fb0e434187642fc6213fe` |
| S2-03 | 2.3 长距离上下文建模 | `SECTION_ACCEPTED` | `320d276b4b946a32a029e21b978871939932d556`; cleanup `d070c0e1ef81051b1b92ab56f49756971fe407c0` |
| S2-04 | 2.4 多尺度特征与尺度结构信息 | `SECTION_ACCEPTED` | `1955a1b4cca01102a7a5221c196e6cead2174da8`; cleanup `69400271b782399ee53cbf125469c6ac81e5f4f4` |
| S2-05 / S2-05-R1 | 2.5 损失函数与评价指标 | `SECTION_ACCEPTED` | `6c52a3afc0d7b786af6efef7d553462174b16f76`; cleanup `20397a685c1e06cc94e5ee6b04d1e7307ec5cb8b` |
| S2-06 | 2.6 本章小结 | `SECTION_ACCEPTED` | `4ae6acb3a30feebaf86cc3913b0eb83fb4775ed8` |

## Terminology Frozen

- voxel, slice, volume, three-dimensional voxel-level segmentation
- 3D CNN, local feature extraction, U-shaped encoder--decoder, skip connection
- long-range context, self-attention, Vision-LSTM, Vision-xLSTM
- local--global collaboration in the spatial dimension
- multi-scale feature, scale-structural information, scale dimension
- Dice, HD95, Params, FLOPs, VRAM, inference time

## Key Evidence Used

The accepted theory is constrained by the source identities recorded in
`docs/LITERATURE_EVIDENCE_POOL.md` and the complete citation record in
`chapters/ch02_background.tex`, including `cicek2016threeDunet`,
`milletari2016vnet`, `ronneberger2015unet`, `vaswani2017attention`,
`hatamizadeh2022unetr`, `shaker2024unetrpp`, `beck2024xlstm`,
`alkin2025visionlstm`, `dutta2025visionxlstmunet`, `zhou2018unetpp`,
`huang2020unet3plus`, `kervadec2021boundary`, `dice1945measures`, and
`taha2015metrics`. Later chapters must use the evidence pool and risk log,
rather than treating this list as authority for new claims.

## Claims Explicitly Avoided

- CNNs cannot obtain global information, or all Transformers have one fixed complexity.
- xLSTM/Vision-xLSTM is necessarily linear, faster, or a proof of Work1 efficacy.
- A specific Work1 loss, training protocol, complexity value, or unverified DOI.
- Work2 R2 or any placeholder as final experimental evidence.
- A universal rule that all small structures are difficult or that one scale configuration fits every task.

## Open Issues

- Work1 final DOI and bounded concrete complexity claim remain pending.
- Synapse/BTCV protocol and HD95 implementation protocol require verified sources.
- The actual Work1 loss is not reported by the formal paper; S2-05 preserves
  `THEORY_ONLY_FALLBACK_AUTHORIZED_BY_GPT_A` and requires controlled backfill
  only when an authoritative training source or final Work2 protocol is frozen.
- Work2 final evidence remains `THESIS_PLACEHOLDER` / pre-study only.

## Transition to Next Chapter

Chapter 3 must use this theory only to explain the verified Work1 method:
spatial local--global coordination using the authoritative Work1 evidence. It
must not treat Chapter 2 theory as proof of the final architecture, protocol,
efficiency, or performance. The new A3 window must recover the exact Chapter 3
scope and evidence boundaries before issuing any formal task.

## New Window Read Set

### A3

1. `docs/AI_AUTHORING_ENTRYPOINT.md`
2. `docs/SUPERVISOR_CHECKPOINT.md`
3. `docs/CHAPTER_STATUS.md`
4. `docs/chapter_handoffs/CH02_HANDOFF.md`
5. `docs/MASTER_THESIS_PLAN.md`
6. `docs/FACTS_AND_NUMBERS.md`
7. `docs/PLACEHOLDER_LEDGER.md`
8. `docs/WRITING_STYLE_GUIDE.md`
9. `docs/ACADEMIC_WRITING_PLAYBOOK.md`
10. `docs/LITERATURE_EVIDENCE_POOL.md`
11. `docs/CITATION_AND_SOURCE_RISK_LOG.md`
12. `docs/ACADEMIC_QUALITY_GATE.md`
13. `chapters/ch02_background.tex`
14. `chapters/ch03_vil_unet.tex`

### B3 (additional)

1. `docs/REFERENCE_THESIS_INDEX.md`
2. `docs/GPTB_PACKET_WORKFLOW.md`
3. the authorized A3 Section Task Card, only after A3 is `SUCCESSOR_READY`

## Successor Window Qualification

- CURRENT_GPT_A_WINDOW: `A2`
- CURRENT_GPT_B_WINDOW: `B2`
- WINDOW_STATUS: `COMPLETE`
- NEXT_GPT_A_WINDOW: `A3`
- NEXT_GPT_B_WINDOW: `B3`
- NEXT_CHAPTER: `Chapter 3 — 基于Vision-xLSTM局部--全局协同建模的三维医学图像分割方法`
- A3_STATUS: `SUCCESSOR_READY`
- B3_STATUS: `SUCCESSOR_READY`
- SUCCESSOR_QUALITY_GATE: `PASSED`

A3 and B3 recovery reports passed A2 qualification review; no retry was
required. A2 and B2 are now `WINDOW_COMPLETE`. Chapter 3 formal work is
authorized only under A3 supervision and the normal Section Task Card
lifecycle; this handoff does not itself issue or select that Task Card.
