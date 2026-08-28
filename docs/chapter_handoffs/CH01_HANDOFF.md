# Chapter 1 Handoff

## Chapter Identity

- Chapter: Chapter 1 — 绪论
- Source: `chapters/ch01_introduction.tex`
- Status: `COMPLETE / CHAPTER_GATE_PASSED`

## Chapter Function in Whole Thesis

Chapter 1 has established the thesis-level argument from research background and technical landscape to two connected research gaps, two progressive research contents, the five-chapter structure, and the theoretical interface required by Chapter 2. Its governing question is how three-dimensional medical image segmentation can coordinate local detail, long-range context, and multi-scale structural information.

## Final Accepted Structure

1. 1.1 研究背景与意义
2. 1.2 国内外研究现状
   - 1.2.1 基于CNN的医学图像分割方法
   - 1.2.2 基于Transformer的医学图像分割方法
   - 1.2.3 基于高效长距离建模的医学图像分割方法
   - 1.2.4 基于多尺度与结构信息增强的医学图像分割方法
3. 1.3 现有方法存在的问题
4. 1.4 本文主要研究内容
   - 1.4.1 基于Vision-xLSTM的局部--全局协同分割方法
   - 1.4.2 基于尺度特异结构证据调制的分割方法
5. 1.5 论文组织结构
6. 1.6 本章小结

## Accepted Sections

| Section | Title | Status | Final Commit |
|---|---|---|---|
| S1-01 | 1.1 研究背景与意义 | `SECTION_ACCEPTED` | `14204f845819b2d0601c771a2eec2d2f28777da6` |
| S1-02A | 1.2.1 基于CNN的医学图像分割方法 | `SECTION_ACCEPTED` | `7887af8d0b7f1089227af9aab770384232a4b2e2` |
| S1-02B-R1 | 1.2.2 基于Transformer的医学图像分割方法 | `SECTION_ACCEPTED` | `6804852d6f49c8b7f09828461e6bcffc5b41e2a9` |
| S1-02C | 1.2.3 基于高效长距离建模的医学图像分割方法 | `SECTION_ACCEPTED` | `1c30384eb7c3725d1e9ebfc69b189e34d44bbfcd` |
| S1-02D | 1.2.4 基于多尺度与结构信息增强的医学图像分割方法 | `SECTION_ACCEPTED` | `1aeb00c159a1e19e8c5ad5113e6ed572b9826c2b` |
| S1-02E | 1.2 国内外研究现状统一衔接与质量审查 | `SECTION_ACCEPTED` | body: `6d338bf77184fa4b92c04c8aa2c64e10837c4ced`; acceptance: `1462a9b1d7cbad93452e12f59ad846a6eec3ee0f` |
| S1-03 | 1.3 现有方法存在的问题 | `SECTION_ACCEPTED` | body: `6182c15e91cc20fee2f9ab080422574d0bd6c57e`; acceptance: `3f67b585a4b5ab851038b9a9713a05d1976d215c` |
| S1-04 | 1.4 本文主要研究内容 | `SECTION_ACCEPTED` | `2cc68c8ef33475e33165b7d00f6611b0c5f1eead` |
| S1-05-R1 | 1.5 论文组织结构 | `SECTION_ACCEPTED` | `cfd0fb5e42d3458e6aff21c0c35f4fe9c6181b9a` |
| S1-06 | 1.6 本章小结 | `SECTION_ACCEPTED` | `58ecc4ab8cd2b6960a7ade8fa356318cece86d80` |

## Core Argument Achieved

第一章将三维医学图像分割中的建模矛盾收束为同一总问题：局部细节、长距离上下文与多尺度结构信息需要被协调利用，而非由单一表征机制分别割裂处理。研究现状表明，三维卷积网络擅长提取局部空间特征，注意力及其相关方法扩展了长距离依赖建模能力，多尺度与结构增强方法则尝试保留不同层级的语义与边界线索；但这些路线分别留下了空间跨度与尺度层级上的协调问题。

据此，Gap 1 被界定为在空间维度上协调局部空间细节与长距离上下文，Work1 对应“基于Vision-xLSTM的局部--全局协同分割方法”，重点处理跨空间范围的特征关联。Gap 2 则被界定为在尺度维度上表征并合理利用不同层级的结构信息，Work2 对应“基于尺度特异结构证据调制的三维医学图像分割方法”。两项工作不是并列项目：Work1 先回答空间关系跨度问题，Work2 在这一基础上继续回答尺度层级结构信息的利用问题。由此，后续章节必须保持从空间维度的局部--全局协同到尺度维度的结构证据调制这一递进关系，并以第二章提供共同的理论基础与术语接口。

## Terminology Frozen

- 3D CNN / 三维卷积神经网络
- U形编码器--解码器
- 长距离上下文
- Vision-xLSTM
- 局部--全局协同
- 多方向序列建模
- 多尺度结构信息
- 尺度特异结构证据调制
- 空间维度
- 尺度维度
- Work1
- Work2

## Key Evidence Used

`cicek2016threeDunet`, `hatamizadeh2022unetr`, `vaswani2017attention`, `shaker2024unetrpp`, `beck2024xlstm`, `alkin2025visionlstm`, `dutta2025visionxlstmunet`, `zhou2018unetpp`, `huang2020unet3plus`, `gao2019focusnet`, `kervadec2021boundary`.

## Facts / Numbers Used

See `docs/FACTS_AND_NUMBERS.md`. Chapter 1 uses no formal Work1 result number in Section 1.4 and no Work2 result number. Work1 evidence identity is `PAPER_REPORTED`; Work2 final results are not yet verified and remain controlled by `docs/FACTS_AND_NUMBERS.md` and `docs/PLACEHOLDER_LEDGER.md`.

## Claims Explicitly Avoided

- CNNs cannot obtain global information.
- All Transformer variants have the same computational complexity.
- xLSTM, Vision-LSTM, or Vision-xLSTM is strictly `O(N)`.
- Vision-xLSTM is necessarily faster than Transformer methods.
- All small organs are difficult to segment.
- Downsampling necessarily causes loss of structural information.
- Historical propagation contamination is a domain fact.
- No-History is superior to Full History as a final conclusion.
- R2 proves final Work2 effectiveness.
- A Work2 placeholder is experimental fact.
- A Work1 DOI or formal IEEE publication status that has not been verified.

## Figures / Tables Finalized

Chapter 1 has no required newly added formal result table. A whole-thesis technical-route figure is recommended but has not been created. Its future logic is: Research Gap 1 → Work1 → Remaining Scale Question → Research Gap 2 → Work2. No figure work is authorized by this handoff.

## Open Issues

- Work1 final DOI: `PENDING`.
- Work1 concrete complexity claim: `PENDING / bounded`.
- Synapse/BTCV protocol: verify from real sources in later experimental chapters.
- HD95 implementation protocol: `PENDING`.
- Final loss protocol: `PENDING`.
- Work2 final evidence: `PENDING`.

These items do not block Chapter 1, but A2, A3, and A4 must continue to respect their stated evidence boundaries.

## Transition to Next Chapter

Chapter 2 is not a continuation of the literature review. It pays the theoretical debt required by later method chapters: three-dimensional medical images and segmentation tasks; three-dimensional convolution and local feature extraction; U-Net encoder--decoder structure and skip connections; Transformer/self-attention basics and three-dimensional computational features; xLSTM and Vision-xLSTM; multi-scale features and scale-structural information; and the loss functions and evaluation metrics that will actually be used later.

## New Window Read Set

### A2

1. `docs/AI_AUTHORING_ENTRYPOINT.md`
2. `docs/SUPERVISOR_CHECKPOINT.md`
3. `docs/chapter_handoffs/CH01_HANDOFF.md`
4. `docs/MASTER_THESIS_PLAN.md`
5. `docs/FACTS_AND_NUMBERS.md`
6. `docs/PLACEHOLDER_LEDGER.md`
7. `docs/WRITING_STYLE_GUIDE.md`
8. `docs/ACADEMIC_WRITING_PLAYBOOK.md`
9. `docs/LITERATURE_EVIDENCE_POOL.md`
10. `docs/CITATION_AND_SOURCE_RISK_LOG.md`
11. `docs/ACADEMIC_QUALITY_GATE.md`
12. `chapters/ch01_introduction.tex`
13. `chapters/ch02_background.tex`

### B2 (additional)

1. `docs/REFERENCE_THESIS_INDEX.md`
2. `docs/GPTB_PACKET_WORKFLOW.md`
