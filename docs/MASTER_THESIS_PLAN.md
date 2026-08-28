# Master Thesis Plan

## P-002 Frozen Architecture V1.0

This is the construction plan for the five-chapter thesis architecture frozen in P-002. It is a structural and evidence-governance document, not formal thesis prose.

Overall problem: how to jointly preserve local detail, long-range context, and multi-scale structural information in 3D medical image segmentation.

Research progression: Work1 addresses spatial local--global collaboration with ViL-UNet; Work2 extends the line to scale-level structural information collaboration through scale-specific structural evidence modulation. Work2 is not a competing independent model.

Evidence identity remains controlled by `docs/FACTS_AND_NUMBERS.md`. R2 is `FORMAL PRE-STUDY EVIDENCE`, not final Work2 efficacy evidence.

## Chapter 1: 绪论

| Section ID | Title | Function | Core Question | Evidence Requirement | Planned Figures/Tables | Status |
|---|---|---|---|---|---|---|
| 1.1 | 研究背景与意义 | Derive the 3D segmentation problem from clinical-task context. | Why do local detail, long-range relation, and scale change matter together? | Real task and literature sources. | Overall technical-route figure. | PLANNED |
| 1.2 | 国内外研究现状 | Organize prior work by technical route and research problem. | What does each route solve and leave unresolved? | Original literature; no author-year listing. | None required. | PLANNED |
| 1.2.1 | 基于CNN的医学图像分割方法 | Establish local modeling, encoder--decoder, and multi-scale background. | What are the strengths and long-range limits of CNN routes? | Original literature. | None required. | PLANNED |
| 1.2.2 | 基于Transformer的医学图像分割方法 | Establish global-relation modeling and 3D cost constraints. | What does attention improve and what tradeoffs remain? | Original literature. | None required. | PLANNED |
| 1.2.3 | 基于高效长距离建模的医学图像分割方法 | Motivate efficient long-range modeling for Work1. | Why is a more efficient alternative to standard Transformer needed? | Original literature. | None required. | PLANNED |
| 1.2.4 | 基于多尺度与结构信息增强的医学图像分割方法 | Motivate Work2's scale-structure question. | Why is multi-scale fusion not automatically scale-specific structural use? | Original literature. | None required. | PLANNED |
| 1.3 | 现有方法存在的问题 | Converge literature into two paired research gaps. | What are the Work1 and Work2 research questions? | Literature-supported gaps; no R2 generalization. | None required. | PLANNED |
| 1.4 | 本文主要研究内容 | Commit to the two-work progression. | How does Work2 inherit and advance Work1? | Approved method positioning only. | Overall technical-route figure. | PLANNED |
| 1.4.1 | 基于Vision-xLSTM的局部--全局协同分割方法 | State Work1's problem, approach, and level. | How does ViL-UNet address spatial local--global collaboration? | PAPER_REPORTED and original method sources. | None required. | PLANNED |
| 1.4.2 | 基于尺度特异结构证据调制的分割方法 | State the remaining scale-level problem and Work2 direction. | Why is scale-specific structure the next problem after Work1? | Approved method scope; placeholders are not findings. | None required. | PLANNED |
| 1.5 | 论文组织结构 | Explain chapter functions. | What argument role does each chapter perform? | Frozen architecture. | None required. | PLANNED |
| 1.6 | 本章小结 | Recover background, gaps, and two works. | What research task has the introduction established? | Chapter content only. | None required. | PLANNED |

## Chapter 2: 三维医学图像分割相关理论与关键技术

| Section ID | Title | Function | Core Question | Evidence Requirement | Planned Figures/Tables | Status |
|---|---|---|---|---|---|---|
| 2.1 | 三维医学图像与分割任务 | Establish 3D task vocabulary. | What is the data and prediction form of 3D segmentation? | Original sources and task protocol when relevant. | Optional task concept figure. | PLANNED |
| 2.2 | 卷积神经网络与U形编码器--解码器 | Provide the local and hierarchy concepts actually used later. | How do local encoding and skip connections form a multi-scale hierarchy? | Original sources. | Optional U-Net concept figure. | PLANNED |
| 2.2.1 | 三维卷积与局部特征提取 | Define only needed 3D convolution concepts. | What local information does 3D convolution model? | Original sources. | None required. | PLANNED |
| 2.2.2 | U-Net编码器--解码器与跳跃连接 | Establish scale hierarchy for Work2. | How are shallow detail and deep semantics connected? | Original sources. | Optional U-Net concept figure. | PLANNED |
| 2.3 | 长距离上下文建模 | Establish theory debt for Work1. | Why is long-range context needed and costly in 3D? | Original sources. | Optional serialization concept figure. | PLANNED |
| 2.3.1 | Transformer与自注意力机制 | Explain global interaction and 3D computational characteristics. | What are attention's capability and cost? | Original sources. | None required. | PLANNED |
| 2.3.2 | xLSTM与Vision-xLSTM | Introduce the theory actually used by Work1. | How does visual sequence modeling support long-range context? | Original xLSTM and Vision-xLSTM sources; no remembered formulas. | Optional serialization concept figure. | PLANNED |
| 2.4 | 多尺度特征与尺度结构信息 | Establish Work2's problem background without revealing its modules. | Why does scale change alter structural evidence? | Original sources. | None required. | PLANNED |
| 2.5 | 损失函数与评价指标 | Define only measures the thesis uses. | What do accuracy and efficiency metrics each mean? | Verified training/evaluation protocol. | Metric-definition table if necessary. | PLANNED |
| 2.5.1 | 分割损失函数 | Cover actually used loss functions. | What optimization objective is truly used? | Verified method/training source. | None required. | PLANNED |
| 2.5.2 | 分割精度指标 | Define Dice and HD95. | What do overlap and boundary distance measure? | Original metric sources. | None required. | PLANNED |
| 2.5.3 | 模型效率指标 | Differentiate Params, FLOPs, VRAM, and inference time. | Why can they not be treated as one metric? | Measured protocol and original definitions. | Optional efficiency-definition table. | PLANNED |
| 2.6 | 本章小结 | Recover theory debt paid for Work1 and Work2. | What later chapters does this foundation enable? | Chapter content only. | None required. | PLANNED |

## Chapter 3: 基于Vision-xLSTM局部--全局协同建模的三维医学图像分割方法

| Section ID | Title | Function | Core Question | Evidence Requirement | Planned Figures/Tables | Status |
|---|---|---|---|---|---|---|
| 3.1 | 引言 | State Work1's spatial local--global problem and method motivation. | Why is ViL-UNet needed? | Original Work1 source and literature. | None required. | PLANNED |
| 3.2 | ViL-UNet总体架构 | Explain complete data flow before modules. | How do encoding, global modeling, fusion, and prediction connect? | Verified Work1 paper structure. | ViL-UNet architecture. | PLANNED |
| 3.3 | 三维局部特征编码 | Explain actual 3D CNN responsibility. | Why retain CNN and how does it prepare global modeling? | Verified Work1 paper structure. | Architecture cross-reference. | PLANNED |
| 3.4 | Vision-xLSTM全局上下文建模 | Explain Work1's global mechanism. | How is long-range 3D context modeled? | Verified Work1 paper and original sources. | Multi-direction modeling figure. | PLANNED |
| 3.4.1 | 三维特征序列化与多方向建模 | Explain the sequence representation. | How are 3D features represented for directional modeling? | Verified Work1 source. | Multi-direction modeling figure. | PLANNED |
| 3.4.2 | ViL模块及长距离信息交互 | Explain the actual ViL module. | How does the module exchange long-range information? | Verified Work1 source. | Architecture cross-reference. | PLANNED |
| 3.5 | 解码与特征融合 | Explain only verifiable decoder/fusion design. | How are features decoded into segmentation predictions? | Verified Work1 source. | Architecture cross-reference. | PLANNED |
| 3.6 | 实验与结果分析 | Close Work1's research loop. | Is Work1 effective, interpretable, and efficient within reported scope? | PAPER_REPORTED; source-verified methods. | Results, ablation, efficiency tables. | PLANNED |
| 3.6.1 | 数据集与实验设置 | State only verified Synapse/ACDC protocol. | Under what setting is Work1 evaluated? | Verified Work1 source. | Experimental-setting table if needed. | PLANNED |
| 3.6.2 | 评价指标与对比方法 | Identify actual chapter measures and comparators. | What makes the comparison meaningful? | Verified Work1 source. | None required. | PLANNED |
| 3.6.3 | Synapse实验结果与分析 | Analyze reported Synapse evidence. | What does Mean DSC 85.12% and HD95 12.49 mm support? | PAPER_REPORTED; organ rows only if recovered. | Work1 quantitative result table. | PLANNED |
| 3.6.4 | ACDC实验结果与分析 | Analyze reported ACDC evidence. | What is supported on ACDC? | PAPER_REPORTED. | Work1 quantitative result table. | PLANNED |
| 3.6.5 | ViL模块数量消融实验 | Test module-depth behavior. | Why is the reported six-block setting best in this ablation? | PAPER_REPORTED; cautious interpretation. | ViL-block ablation table. | PLANNED |
| 3.6.6 | 模型复杂度与效率分析 | Report bounded Work1 efficiency. | What do 16.48M Params and 17.93G FLOPs show? | PAPER_REPORTED; no unverified VRAM/time. | Work1 efficiency table. | PLANNED |
| 3.6.7 | 可视化分析 | Explain mechanism only when authentic materials exist. | Where does Work1 visibly help or fail? | Authentic Work1 figure or lawful later output. | Optional qualitative figure. | PLANNED |
| 3.7 | 本章小结 | Close Work1 and create a limited bridge to Work2. | What spatial issue is addressed and what scale question remains? | Chapter evidence only. | None required. | PLANNED |

## Chapter 4: 基于尺度特异结构证据调制的三维医学图像分割方法

| Section ID | Title | Function | Core Question | Evidence Requirement | Planned Figures/Tables | Status |
|---|---|---|---|---|---|---|
| 4.1 | 引言 | Establish scale-level problem as the next research layer. | Why does Work2 address scale structure rather than repeat global modeling? | Literature and approved method scope. | Work1-to-Work2 progression figure. | PLANNED |
| 4.2 | 跨尺度结构建模的前置分析 | Record the design signal without overclaiming. | What does the R2 comparison justify exploring? | EXPERIMENTALLY_VERIFIED pre-study only. | Full-History vs No-History motivation figure/table. | PLANNED |
| 4.3 | Work2总体架构 | Describe final architecture once frozen. | How do the Work1 backbone, scale evidence, modulation, and decoder relate? | Final verified design only. | Work2 architecture. | PLANNED |
| 4.4 | 尺度特异结构证据建模 | Define SSE at the appropriate design maturity. | Why does each scale need its own structural evidence? | Final verified design only. | SSE module figure. | PLANNED |
| 4.5 | 独立尺度自适应调制 | Define IM at the appropriate design maturity. | How is each scale independently modulated? | Final verified design only. | IM module figure. | PLANNED |
| 4.6 | 结构证据引导的解码增强 | Define SDE at the appropriate design maturity. | How is structure evidence used in decoding? | Final verified design only. | SDE module figure. | PLANNED |
| 4.7 | 实验与结果分析 | Close Work2's research loop after final evidence exists. | Is Work2 effective, mechanism-supported, stable, and efficient? | Final Work2 evidence; placeholders remain layout-only. | Comparison, organ, strategy, ablation, efficiency, qualitative displays. | PLANNED |
| 4.7.1 | 数据集与实验设置 | Establish a fair unified protocol. | Are methods compared under a common setting? | Final verified protocol. | Experimental-setting table if needed. | PLANNED |
| 4.7.2 | 与主流方法的总体对比 | Test overall efficacy. | What do Mean DSC and HD95 show after verification? | Final Work2 evidence only. | Overall comparison table. | PLANNED |
| 4.7.3 | 器官级分割结果分析 | Assess difficult structures and exceptions. | Are Gallbladder, Pancreas, Kidney(L/R), and Stomach all reported honestly? | Final Work2 evidence only. | Organ-level result table. | PLANNED |
| 4.7.4 | 历史传播策略对比 | Connect pre-study signal to final design logic. | Why is history accumulation not the final design, and why is IM needed? | Pre-study plus final controlled evidence; identities separated. | History-strategy table. | PLANNED |
| 4.7.5 | 模块消融实验 | Test SSE, IM, SDE, and complementarity. | What ability does each module contribute? | Final Work2 evidence only. | Ablation table. | PLANNED |
| 4.7.6 | 模型复杂度与效率分析 | Report actual costs and tradeoffs. | What are the measured Params, FLOPs, VRAM, and inference time? | Final measurement only. | Efficiency table. | PLANNED |
| 4.7.7 | 可视化与困难样本分析 | Explain mechanisms, success, and limits. | Where does Work2 help and where does it remain limited? | Authentic final outputs only. | Qualitative visualization. | PLANNED |
| 4.8 | 本章小结 | Close Work2 with limited conclusions. | What does the evidence support about scale-level structure? | Chapter evidence only. | None required. | PLANNED |

## Chapter 5: 总结与展望

| Section ID | Title | Function | Core Question | Evidence Requirement | Planned Figures/Tables | Status |
|---|---|---|---|---|---|---|
| 5.1 | 全文工作总结 | Mirror the two promised works in Section 1.4. | What problem, method, and evidence belong to each work? | Final chapter evidence; Work2 only after final verification. | No new core display. | PLANNED |
| 5.2 | 主要研究结论 | State non-duplicative supported conclusions if retained. | What conclusions are directly justified? | Evidence-supported conclusions only. | No new core display. | PLANNED |
| 5.3 | 局限性与展望 | Convert verified limitations and failures into next steps. | What evidence exposes remaining limits? | Real failure, limitation, and cost evidence. | No new core display. | PLANNED |

## Boundaries

- This plan does not authorize Codex to draft formal thesis prose.
- Do not change `docs/FACTS_AND_NUMBERS.md` or `docs/PLACEHOLDER_LEDGER.md` as part of outline work.
- Do not upgrade R2 pre-study evidence or any THESIS_PLACEHOLDER into a final Work2 claim.
- Use `docs/SECTION_TASK_CARD_TEMPLATE.md` before formal section drafting.
