# P-003A：硕士论文核心参考文献证据池初始化

本次交付仅建立文献证据池，不撰写任何正式论文正文。检索前已按要求核对论文仓库治理文件。仓库当前将论文主线冻结为“三维医学图像分割中的局部细节—长距离上下文—多尺度结构信息协同”，并明确第1章按 CNN、Transformer、高效长距离建模、多尺度与结构增强组织研究现状，第2章只偿还后续方法实际依赖的理论债务。 Work1 的性能数据继续由 `FACTS_AND_NUMBERS.md` 管理，本任务未利用 Work2 placeholder 反向筛选文献。

---

# 一、Core Literature Pool

## A. 医学图像分割与 CNN / U-Net 基础

### A1. `long2015fcn`

- **Category:** A — CNN / dense prediction foundation
- **Priority:** FOUNDATIONAL
- **Title:** Fully Convolutional Networks for Semantic Segmentation
- **Authors:** Jonathan Long; Evan Shelhamer; Trevor Darrell
- **Year:** 2015
- **Venue:** CVPR 2015
- **Publication Type:** Conference
- **DOI:** 10.1109/CVPR.2015.7298965
- **Verified Publisher URL:** [CVF Open Access](https://openaccess.thecvf.com/content_cvpr_2015/html/Long_Fully_Convolutional_Networks_2015_CVPR_paper.html)
- **Secondary Verified URL:** DOI/IEEE record
- **Formal Publication Status:** Published
- **Open-access Full Text:** YES
- **Why This Paper Matters:** 为“由分类网络走向端到端像素级预测”的技术演进提供起点；是否在正文保留可由后续写作任务决定。
- **Supported Claims:** 支持全卷积网络通过卷积化结构进行密集预测，并利用跨层连接将深层语义信息与较浅层空间信息结合。
- **Used In Planned Sections:** 1.2.1；2.2
- **Original Method Paper:** YES
- **Notes / Evidence Boundary:** 不用于证明 U-Net 或 CNN “必然缺乏全局建模能力”；其功能主要是历史与结构背景。([开放获取计算机视觉论坛](https://openaccess.thecvf.com/content_cvpr_2015/html/Long_Fully_Convolutional_Networks_2015_CVPR_paper.html "https://openaccess.thecvf.com/content_cvpr_2015/html/Long_Fully_Convolutional_Networks_2015_CVPR_paper.html"))

### A2. `ronneberger2015unet`

- **Category:** A
- **Priority:** FOUNDATIONAL
- **Title:** U-Net: Convolutional Networks for Biomedical Image Segmentation
- **Authors:** Olaf Ronneberger; Philipp Fischer; Thomas Brox
- **Year:** 2015
- **Venue:** MICCAI 2015, LNCS 9351
- **Publication Type:** Conference
- **DOI:** 10.1007/978-3-319-24574-4\_28
- **Verified Publisher URL:** [SpringerLink](https://doi.org/10.1007/978-3-319-24574-4_28)
- **Secondary Verified URL:** arXiv version available
- **Formal Publication Status:** Published
- **Open-access Full Text:** YES
- **Why This Paper Matters:** 是整篇论文 U 形编码器—解码器、浅层细节与深层语义连接的首要理论来源。
- **Supported Claims:** 支持 U-Net 采用收缩路径与对称扩展路径，并通过对应层特征传递改善定位信息恢复的描述。
- **Used In Planned Sections:** 1.2.1；2.2；2.2.2；3.1；3.2–3.5
- **Original Method Paper:** YES
- **Notes / Evidence Boundary:** 可用于描述 U-Net 本身结构；不能单独用于声称其在三维任务、长距离依赖或小器官问题上的普遍局限。([DOI](https://doi.org/10.1007/978-3-319-24574-4_28 "https://doi.org/10.1007/978-3-319-24574-4_28"))

### A3. `cicek2016threeDunet`

- **Category:** A
- **Priority:** FOUNDATIONAL
- **Title:** 3D U-Net: Learning Dense Volumetric Segmentation from Sparse Annotation
- **Authors:** Özgün Çiçek; Ahmed Abdulkadir; Soeren S. Lienkamp; Thomas Brox; Olaf Ronneberger
- **Year:** 2016
- **Venue:** MICCAI 2016
- **Publication Type:** Conference
- **DOI:** 10.1007/978-3-319-46723-8\_49
- **Verified Publisher URL:** [SpringerLink](https://doi.org/10.1007/978-3-319-46723-8_49)
- **Secondary Verified URL:** arXiv
- **Formal Publication Status:** Published
- **Open-access Full Text:** YES
- **Why This Paper Matters:** 第2章解释“三维卷积、体素和体数据直接建模”时最直接的原始来源。
- **Supported Claims:** 支持将 U-Net 的二维运算扩展至三维卷积、池化和上采样，从而直接对体数据进行密集分割。
- **Used In Planned Sections:** 1.1；1.2.1；2.1；2.2；2.2.1
- **Original Method Paper:** YES
- **Notes / Evidence Boundary:** 不将其早期具体实验设置概括成现代三维分割的统一训练范式。([DOI](https://doi.org/10.1007/978-3-319-46723-8_49?jav=VoR\&rel=cite-as\&urlappend=%3Fref%3DPDF "https://doi.org/10.1007/978-3-319-46723-8_49?jav=VoR\&rel=cite-as\&urlappend=%3Fref%3DPDF"))

### A4. `milletari2016vnet`

- **Category:** A
- **Priority:** FOUNDATIONAL
- **Title:** V-Net: Fully Convolutional Neural Networks for Volumetric Medical Image Segmentation
- **Authors:** Fausto Milletari; Nassir Navab; Seyed-Ahmad Ahmadi
- **Year:** 2016
- **Venue:** 2016 Fourth International Conference on 3D Vision (3DV)
- **Publication Type:** Conference
- **DOI:** 10.1109/3DV.2016.79
- **Verified Publisher URL:** [IEEE DOI record](https://doi.org/10.1109/3DV.2016.79)
- **Formal Publication Status:** Published
- **Open-access Full Text:** YES
- **Why This Paper Matters:** 与 3D U-Net 一起构成早期端到端三维医学图像分割代表路线。
- **Supported Claims:** 支持使用三维全卷积网络直接进行体数据分割；论文还采用基于 Dice 的目标函数处理分割学习。
- **Used In Planned Sections:** 1.2.1；2.1；2.2.1；2.5
- **Original Method Paper:** YES
- **Notes / Evidence Boundary:** Dice 指标的正式定义仍优先使用 F 类专门来源，而非仅引用 V-Net。([IEEE Xplore](https://ieeexplore.ieee.org/document/7785132/ "https://ieeexplore.ieee.org/document/7785132/"))

### A5. `isensee2021nnunet`

- **Category:** A
- **Priority:** CORE
- **Title:** nnU-Net: a self-configuring method for deep learning-based biomedical image segmentation
- **Authors:** Fabian Isensee; Paul F. Jaeger; Simon A. A. Kohl; Jens Petersen; Klaus H. Maier-Hein
- **Year:** 2021
- **Venue:** Nature Methods, 18, 203–211
- **Publication Type:** Journal
- **DOI:** 10.1038/s41592-020-01008-z
- **Verified Publisher URL:** [Nature Methods](https://doi.org/10.1038/s41592-020-01008-z)
- **Formal Publication Status:** Published
- **Open-access Full Text:** YES
- **Why This Paper Matters:** 是现代 CNN/U-Net 路线的重要强基线，避免第一章将 CNN 路线写成“U-Net 后即停滞”。
- **Supported Claims:** 支持根据数据集属性自动配置预处理、网络、训练与后处理方案，并说明 U-Net 类架构经系统配置后仍具有很强的医学分割基准能力。
- **Used In Planned Sections:** 1.2.1；1.3；2.2
- **Original Method Paper:** YES
- **Notes / Evidence Boundary:** 不能把 nnU-Net 的强性能解释成“架构创新不再必要”。([DOI](https://doi.org/10.1038/s41592-020-01008-z "https://doi.org/10.1038/s41592-020-01008-z"))

### A6. `kamnitsas2017deepmedic`

- **Category:** A
- **Priority:** SUPPORTING
- **Title:** Efficient multi-scale 3D CNN with fully connected CRF for accurate brain lesion segmentation
- **Authors:** Konstantinos Kamnitsas; Christian Ledig; Virginia F. J. Newcombe; Joanna P. Simpson; Andrew D. Kane; David K. Menon; Daniel Rueckert; Ben Glocker
- **Year:** 2017
- **Venue:** Medical Image Analysis, 36, 61–78
- **Publication Type:** Journal
- **DOI:** 10.1016/j.media.2016.10.004
- **Verified Publisher URL:** [Medical Image Analysis](https://doi.org/10.1016/j.media.2016.10.004)
- **Formal Publication Status:** Published
- **Open-access Full Text:** YES
- **Why This Paper Matters:** 提供早期三维 CNN 中以不同分辨率路径兼顾局部细节和较大上下文的代表案例。
- **Supported Claims:** 支持利用并行多尺度三维卷积路径同时处理局部信息与更大范围上下文的描述。
- **Used In Planned Sections:** 1.2.1；1.2.4；2.1；2.4
- **Original Method Paper:** YES
- **Notes / Evidence Boundary:** 不把该方法的脑病灶场景直接等同于腹部多器官问题。([科学直通车](https://www.sciencedirect.com/science/article/pii/S1361841516301839 "https://www.sciencedirect.com/science/article/pii/S1361841516301839"))

---

# B. Transformer 与医学图像分割

### B1. `vaswani2017attention`

- **Category:** B
- **Priority:** FOUNDATIONAL
- **Title:** Attention Is All You Need
- **Authors:** Ashish Vaswani; Noam Shazeer; Niki Parmar; Jakob Uszkoreit; Llion Jones; Aidan N. Gomez; Łukasz Kaiser; Illia Polosukhin
- **Year:** 2017
- **Venue:** Advances in Neural Information Processing Systems 30
- **Publication Type:** Conference
- **DOI:** NONE VERIFIED
- **Verified Publisher URL:** [NeurIPS proceedings](https://papers.nips.cc/paper/7181-attention-is-all-you-need)
- **Formal Publication Status:** Published
- **Open-access Full Text:** YES
- **Why This Paper Matters:** 第2章自注意力机制最基本的原始来源。
- **Supported Claims:** 支持 Transformer 以注意力机制替代循环结构进行序列位置之间的信息交互，并支持对 self-attention 机制本身的理论介绍。
- **Used In Planned Sections:** 1.2.2；2.3；2.3.1；3.1
- **Original Method Paper:** YES
- **Notes / Evidence Boundary:** 其研究对象不是三维医学图像，因此“医学三维场景计算负担”应由后续医学 Transformer 原始论文共同支撑。([NeurIPS Proceedings](https://proceedings.neurips.cc/paper_files/paper/2017/hash/3f5ee243547dee91fbd053c1c4a845aa-Abstract.html "https://proceedings.neurips.cc/paper_files/paper/2017/hash/3f5ee243547dee91fbd053c1c4a845aa-Abstract.html"))

### B2. `chen2024transunet`

- **Category:** B
- **Priority:** CORE
- **Title:** TransUNet: Rethinking the U-Net architecture design for medical image segmentation through the lens of transformers
- **Authors:** Jieneng Chen; Jieru Mei; Xianhang Li; Yongyi Lu; Qihang Yu; Qingyue Wei; Xiangde Luo; Yutong Xie; Ehsan Adeli; Yan Wang; Matthew P. Lungren; Shaoting Zhang; Lei Xing; Le Lu; Alan Yuille; Yuyin Zhou
- **Year:** 2024
- **Venue:** Medical Image Analysis, 97, 103280
- **Publication Type:** Journal
- **DOI:** 10.1016/j.media.2024.103280
- **Verified Publisher URL:** [Medical Image Analysis](https://doi.org/10.1016/j.media.2024.103280)
- **Formal Publication Status:** Published; formal journal version
- **Open-access Full Text:** YES
- **Why This Paper Matters:** CNN—Transformer 混合医学分割路线的核心代表。
- **Supported Claims:** 支持将 Transformer 的全局关系建模与 U 形结构中的局部/高分辨率信息恢复结合；正式版本同时讨论二维和三维实现。
- **Used In Planned Sections:** 1.2.2；1.3；2.3.1；3.1
- **Original Method Paper:** YES
- **Notes / Evidence Boundary:** 文献池采用 2024 正式期刊版，不将 2021 arXiv 版本再作为第二篇核心文献。([科学直通车](https://www.sciencedirect.com/science/article/pii/S1361841524002056 "https://www.sciencedirect.com/science/article/pii/S1361841524002056"))

### B3. `hatamizadeh2022unetr`

- **Category:** B
- **Priority:** CORE
- **Title:** UNETR: Transformers for 3D Medical Image Segmentation
- **Authors:** Ali Hatamizadeh; Yucheng Tang; Vishwesh Nath; Dong Yang; Andriy Myronenko; Bennett Landman; Holger R. Roth; Daguang Xu
- **Year:** 2022
- **Venue:** WACV 2022
- **Publication Type:** Conference
- **DOI:** 10.1109/WACV51458.2022.00181
- **Verified Publisher URL:** [IEEE DOI record](https://doi.org/10.1109/WACV51458.2022.00181)
- **Formal Publication Status:** Published
- **Open-access Full Text:** YES
- **Why This Paper Matters:** 本论文讨论“三维 Transformer”时最直接的代表方法之一。
- **Supported Claims:** 支持将三维体数据划分为序列表示并由 Transformer 编码全局信息，同时借助不同层级特征连接解码器恢复空间细节。
- **Used In Planned Sections:** 1.2.2；2.3.1；3.1
- **Original Method Paper:** YES
- **Notes / Evidence Boundary:** 可用于讨论卷积局部感受野与 Transformer 长距离建模动机，但不应据此概括所有 CNN 的能力。([DOI](https://doi.org/10.1109/WACV51458.2022.00181 "https://doi.org/10.1109/WACV51458.2022.00181"))

### B4. `hatamizadeh2022swinunetr`

- **Category:** B
- **Priority:** CORE
- **Title:** Swin UNETR: Swin Transformers for Semantic Segmentation of Brain Tumors in MRI Images
- **Authors:** Ali Hatamizadeh; Vishwesh Nath; Yucheng Tang; Dong Yang; Holger R. Roth; Daguang Xu
- **Year:** 2022
- **Venue:** BrainLes / MICCAI workshop proceedings, LNCS
- **Publication Type:** Conference
- **DOI:** 10.1007/978-3-031-08999-2\_22
- **Verified Publisher URL:** [Springer DOI record](https://doi.org/10.1007/978-3-031-08999-2_22)
- **Formal Publication Status:** Published
- **Open-access Full Text:** YES
- **Why This Paper Matters:** 提供分层、窗口化 Transformer 在三维医学分割中的代表路线。
- **Supported Claims:** 支持以 shifted-window attention 构建层次化三维编码器，并在多分辨率层级与 U 形解码结构结合。
- **Used In Planned Sections:** 1.2.2；1.3；2.3.1；2.4
- **Original Method Paper:** YES
- **Notes / Evidence Boundary:** 其注意力并非所有 token 的全局全连接注意力，因此不能把它与标准全局 self-attention 的复杂度简单等同。([Colab](https://colab.ws/articles/10.1007%2F978-3-031-08999-2_22 "https://colab.ws/articles/10.1007%2F978-3-031-08999-2_22"))

### B5. `xie2021cotr`

- **Category:** B
- **Priority:** SUPPORTING
- **Title:** CoTr: Efficiently Bridging CNN and Transformer for 3D Medical Image Segmentation
- **Authors:** Yutong Xie; Jianpeng Zhang; Chunhua Shen; Yong Xia
- **Year:** 2021
- **Venue:** MICCAI 2021
- **Publication Type:** Conference
- **DOI:** 10.1007/978-3-030-87199-4\_16
- **Verified Publisher URL:** [Springer DOI record](https://doi.org/10.1007/978-3-030-87199-4_16)
- **Formal Publication Status:** Published
- **Open-access Full Text:** YES
- **Why This Paper Matters:** 是“CNN 保留局部特征 + Transformer 补充长距离依赖”这一混合思路的三维代表。
- **Supported Claims:** 支持在三维分割中利用 CNN 提取局部特征并以 deformable Transformer 建立远距离关系，同时讨论直接处理高分辨率三维特征带来的计算问题。
- **Used In Planned Sections:** 1.2.2；1.3；3.1
- **Original Method Paper:** YES
- **Notes / Evidence Boundary:** 其 deformable attention 机制与 Work1 的 Vision-xLSTM 不等价，仅作为问题与路线背景。([MICCAI 2021](https://miccai2021.org/openaccess/paperlinks/2021/09/01/118-Paper0537.html "https://miccai2021.org/openaccess/paperlinks/2021/09/01/118-Paper0537.html"))

### B6. `zhou2023nnformer`

- **Category:** B
- **Priority:** CORE
- **Title:** nnFormer: Volumetric Medical Image Segmentation via a 3D Transformer
- **Authors:** Hong-Yu Zhou; Jiansen Guo; Yinghao Zhang; Xiaoguang Han; Lequan Yu; Liansheng Wang; Yizhou Yu
- **Year:** 2023
- **Venue:** IEEE Transactions on Image Processing, 32, 4036–4045
- **Publication Type:** Journal
- **DOI:** 10.1109/TIP.2023.3293771
- **Verified Publisher URL:** [IEEE DOI record](https://doi.org/10.1109/TIP.2023.3293771)
- **Formal Publication Status:** Published
- **Open-access Full Text:** YES
- **Why This Paper Matters:** 提供更完整的三维 Transformer 编码—解码建模代表。
- **Supported Claims:** 支持在体数据分割中通过 Transformer 进行跨区域关系建模，并结合局部与全局信息处理三维结构。
- **Used In Planned Sections:** 1.2.2；1.3；2.3.1
- **Original Method Paper:** YES
- **Notes / Evidence Boundary:** 正式期刊标题与早期 arXiv 标题略有变化，最终 BibTeX 应使用正式 IEEE 版本。([PubMed](https://pubmed.ncbi.nlm.nih.gov/37440404/ "https://pubmed.ncbi.nlm.nih.gov/37440404/"))

### B7. `shaker2024unetrpp`

- **Category:** B
- **Priority:** CORE
- **Title:** UNETR++: Delving into Efficient and Accurate 3D Medical Image Segmentation
- **Authors:** Abdelrahman Shaker; Muhammad Maaz; Hanoona Rasheed; Salman Khan; Ming-Hsuan Yang; Fahad Shahbaz Khan
- **Year:** 2024
- **Venue:** IEEE Transactions on Medical Imaging, 43(9), 3377–3390
- **Publication Type:** Journal
- **DOI:** 10.1109/TMI.2024.3398728
- **Verified Publisher URL:** [IEEE DOI record](https://doi.org/10.1109/TMI.2024.3398728)
- **Formal Publication Status:** Published
- **Open-access Full Text:** YES
- **Why This Paper Matters:** 为第一章讨论三维自注意力的计算负担以及高效注意力设计提供直接医学场景证据。
- **Supported Claims:** 支持标准 self-attention 在高维三维输入上的计算开销问题，以及通过更高效的空间/通道注意力设计降低这种负担的研究路线。
- **Used In Planned Sections:** 1.2.2；1.3；2.3.1；3.1
- **Original Method Paper:** YES
- **Notes / Evidence Boundary:** 不使用其结果证明 Vision-xLSTM 更优，只用于说明三维 Transformer 社区本身也在处理效率问题。([PubMed](https://pubmed.ncbi.nlm.nih.gov/38722726/ "https://pubmed.ncbi.nlm.nih.gov/38722726/"))

---

# C. xLSTM / Vision-xLSTM / 高效长距离建模

### C1. `beck2024xlstm`

- **Category:** C
- **Priority:** FOUNDATIONAL
- **Title:** xLSTM: Extended Long Short-Term Memory
- **Authors:** Maximilian Beck; Korbinian Pöppel; Markus Spanring; Andreas Auer; Oleksandra Prudnikova; Michael Kopp; Günter Klambauer; Johannes Brandstetter; Sepp Hochreiter
- **Year:** 2024
- **Venue:** NeurIPS 2024
- **Publication Type:** Conference
- **DOI:** 10.52202/079017-3417
- **Verified Publisher URL:** [NeurIPS proceedings](https://papers.nips.cc/paper_files/paper/2024/hash/c2ce2f2701c10a2b2f2ea0bfa43cfaa3-Abstract-Conference.html)
- **Formal Publication Status:** Published
- **Open-access Full Text:** YES
- **Why This Paper Matters:** Work1 核心机制的最上游理论来源。
- **Supported Claims:** 支持 xLSTM 引入 exponential gating，并形成 sLSTM 与 mLSTM 两类扩展；其中 mLSTM 使用矩阵记忆且可并行计算。
- **Used In Planned Sections:** 1.2.3；2.3.2；3.1；3.4
- **Original Method Paper:** YES
- **Notes / Evidence Boundary:** **不得把这篇论文直接转化为“Work1 实现严格为 O(N)”的证据。** xLSTM 的架构性质与具体 Vision-xLSTM 实现复杂度必须分别处理。([NIPS论文集](https://papers.nips.cc/paper_files/paper/2024/hash/c2ce2f2701c10a2b2f2ea0bfa43cfaa3-Abstract-Conference.html "https://papers.nips.cc/paper_files/paper/2024/hash/c2ce2f2701c10a2b2f2ea0bfa43cfaa3-Abstract-Conference.html"))

### C2. `alkin2025visionlstm`

- **Category:** C
- **Priority:** CORE
- **Title:** Vision-LSTM: xLSTM as Generic Vision Backbone
- **Authors:** Benedikt Alkin; Maximilian Beck; Korbinian Pöppel; Sepp Hochreiter; Johannes Brandstetter
- **Year:** 2025
- **Venue:** ICLR 2025
- **Publication Type:** Conference
- **DOI:** NONE VERIFIED
- **Verified Publisher URL:** ICLR/OpenReview formal conference record
- **Formal Publication Status:** Published at ICLR 2025
- **Open-access Full Text:** YES
- **Why This Paper Matters:** 是 Work1 所用 Vision-xLSTM / ViL 的直接视觉来源，应作为 2.3.2 的核心引用。
- **Supported Claims:** 支持将 xLSTM block 适配到视觉 patch 序列，并通过方向交替的序列处理形成视觉骨干；支持 ViL 可迁移至视觉识别和密集视觉任务的描述。
- **Used In Planned Sections:** 1.2.3；2.3.2；3.1；3.4；3.4.1；3.4.2
- **Original Method Paper:** YES
- **Notes / Evidence Boundary:** 应优先引用 ICLR 2025 正式版本，而不是仅引用更早 workshop/arXiv 版本。([ICLR 会议记录](https://proceedings.iclr.cc/paper_files/paper/2025/hash/3b6eaef68473fe46bc4197a6b4460042-Abstract-Conference.html "https://proceedings.iclr.cc/paper_files/paper/2025/hash/3b6eaef68473fe46bc4197a6b4460042-Abstract-Conference.html"))

### C3. `dutta2025visionxlstmunet`

- **Category:** C
- **Priority:** CORE
- **Title:** Are Vision-xLSTM-embedded U-Nets better at segmenting medical images?
- **Authors:** Pallabi Dutta; Soham Bose; Swalpa Kumar Roy; Sushmita Mitra
- **Year:** 2025
- **Venue:** Neural Networks, 192, 107925
- **Publication Type:** Journal
- **DOI:** 10.1016/j.neunet.2025.107925
- **Verified Publisher URL:** [Neural Networks / ScienceDirect](https://doi.org/10.1016/j.neunet.2025.107925)
- **Formal Publication Status:** Published
- **Open-access Full Text:** UNKNOWN
- **Why This Paper Matters:** 这是目前与 Work1 技术路线最接近的外部正式期刊来源之一。
- **Supported Claims:** 支持 CNN 负责局部空间/纹理特征、ViL 在 U 形网络中用于长距离关系建模这一医学分割路线；论文覆盖二维与三维医学分割。
- **Used In Planned Sections:** 1.2.3；2.3.2；3.1
- **Original Method Paper:** YES
- **Notes / Evidence Boundary:** 不采用其“first integration”等优先权措辞，因为更早的 xLSTM-UNet 技术报告/会议版本造成时间线复杂性；此文只支持技术路线事实。([科学直通车](https://www.sciencedirect.com/science/article/abs/pii/S0893608025008068 "https://www.sciencedirect.com/science/article/abs/pii/S0893608025008068"))

### C4. `liu2024swinumamba`

- **Category:** C
- **Priority:** SUPPORTING
- **Title:** Swin-UMamba: Mamba-based UNet with ImageNet-based pretraining
- **Authors:** Jiarun Liu; Hao Yang; Hong-Yu Zhou; Yan Xi; Lequan Yu; Cheng Li; Yong Liang; Guangming Shi; Yizhou Yu; Shaoting Zhang; Hairong Zheng; Shanshan Wang
- **Year:** 2024
- **Venue:** MICCAI 2024, LNCS 15009
- **Publication Type:** Conference
- **DOI:** 10.1007/978-3-031-72114-4\_59
- **Verified Publisher URL:** MICCAI official open-access page / Springer DOI
- **Formal Publication Status:** Published
- **Open-access Full Text:** YES
- **Why This Paper Matters:** 用少量 SSM 文献说明“高效序列/状态空间建模”是 Transformer 之外正在发展的另一条路线。
- **Supported Claims:** 支持状态空间类模型被引入医学分割以处理多尺度、局部到全局依赖关系的研究方向。
- **Used In Planned Sections:** 1.2.3；1.3
- **Original Method Paper:** YES
- **Notes / Evidence Boundary:** 只作为旁证，不让 Mamba 路线取代本论文以 Vision-xLSTM 为中心的叙事。([MICCAI 2025 - Open Access](https://papers.miccai.org/miccai-2024/749-Paper1627.html "https://papers.miccai.org/miccai-2024/749-Paper1627.html"))

### C5. `wu2026vilunet`

- **Category:** C — Work1
- **Priority:** CORE
- **Title:** ViL-UNet: Beyond Transformers for 3D Medical Image Segmentation with Vision-xLSTM
- **Authors:** Yong Wu; Wenjun Huang; Ziyu Hu; Yiqi Ma; Pi Fang; Yuechen Yin; Qinghua Zhong
- **Year:** 2026
- **Venue:** International Joint Conference on Neural Networks (IJCNN), within IEEE WCCI 2026
- **Publication Type:** Conference
- **DOI:** **NOT FOUND / NOT VERIFIED as of 2026-08-28**
- **Verified Publisher URL:** [WCCI 2026 official Proceedings index](https://wcci.klinkhamergroup.com/papers/file_index.html)
- **Secondary Verified URL:** [WCCI 2026 official programme](https://wcci.klinkhamergroup.com/papers/at_a_glance.html)
- **Formal Publication Status:** WCCI 2026 official proceedings site lists paper ID `ijcnn_pap4144`, with PDF and paper-view entries; the WCCI programme lists it as an IJCNN paper. An independent IEEE Xplore record/DOI was not located during P-003A.
- **Open-access Full Text:** YES — the official proceedings index exposes a PDF entry.
- **Why This Paper Matters:** Work1 本身，是第3章架构、模块和方法动机的直接方法来源。
- **Supported Claims:** 当前稿件直接支持“3D CNN encoder + ViL bottleneck + ViL-related skip enhancement + U-shaped decoder”的论文描述，并支持 CNN 局部特征与 Vision-xLSTM 长距离上下文协同的作者方法定位。稿件首页作者信息已核验。
- **Used In Planned Sections:** 1.4.1；3.1；3.2；3.3；3.4；3.5；3.6
- **Original Method Paper:** YES
- **Notes / Evidence Boundary:** WCCI 官方 proceedings 与会议日程已经足以确认会议论文身份，但**不能自行生成 DOI、IEEE Xplore article number、卷期或页码**。WCCI 官方文件还确认该论文已作为 WCCI 2026 科学报告展示。 ([WCCI 2026](https://wcci.klinkhamergroup.com/papers/file_index.html "WCCI 2026 Proceedings"))

---

# D. 多尺度、结构信息、小器官与边界问题

### D1. `zhou2018unetpp`

- **Category:** D
- **Priority:** CORE
- **Title:** UNet++: A Nested U-Net Architecture for Medical Image Segmentation
- **Authors:** Zongwei Zhou; Md Mahfuzur Rahman Siddiquee; Nima Tajbakhsh; Jianming Liang
- **Year:** 2018
- **Venue:** DLMIA / ML-CDS, MICCAI 2018
- **Publication Type:** Conference
- **DOI:** 10.1007/978-3-030-00889-5\_1
- **Verified Publisher URL:** [Springer DOI record](https://doi.org/10.1007/978-3-030-00889-5_1)
- **Formal Publication Status:** Published
- **Open-access Full Text:** YES
- **Why This Paper Matters:** 是跨层、多尺度信息融合改造 U-Net skip connection 的经典代表。
- **Supported Claims:** 支持通过嵌套、密集跳跃路径逐步缩小编码器与解码器特征间语义差异的设计。
- **Used In Planned Sections:** 1.2.1；1.2.4；2.2.2；2.4
- **Original Method Paper:** YES
- **Notes / Evidence Boundary:** 它证明的是一种多尺度/skip 改造路线存在，不证明“尺度特异结构证据”已经被解决。([DOI](https://doi.org/10.1007%2F978-3-030-00889-5_1 "https://doi.org/10.1007%2F978-3-030-00889-5_1"))

### D2. `ibtehaz2020multiresunet`

- **Category:** D
- **Priority:** SUPPORTING
- **Title:** MultiResUNet: Rethinking the U-Net architecture for multimodal biomedical image segmentation
- **Authors:** Nabil Ibtehaz; M. Sohel Rahman
- **Year:** 2020
- **Venue:** Neural Networks, 121, 74–87
- **Publication Type:** Journal
- **DOI:** 10.1016/j.neunet.2019.08.025
- **Verified Publisher URL:** [Neural Networks](https://doi.org/10.1016/j.neunet.2019.08.025)
- **Formal Publication Status:** Published
- **Open-access Full Text:** UNKNOWN
- **Why This Paper Matters:** 为“使用多分辨率卷积增强不同尺度特征表达”提供代表性 CNN 路线。
- **Supported Claims:** 支持医学图像目标尺度变化促使网络采用多分辨率特征提取与增强 skip path 的设计方向。
- **Used In Planned Sections:** 1.2.4；2.4
- **Original Method Paper:** YES
- **Notes / Evidence Boundary:** 不由该论文推出下采样必然造成某一具体器官性能下降。([科学直通车](https://www.sciencedirect.com/science/article/abs/pii/S0893608019302503 "https://www.sciencedirect.com/science/article/abs/pii/S0893608019302503"))

### D3. `huang2020unet3plus`

- **Category:** D
- **Priority:** CORE
- **Title:** UNet 3+: A Full-Scale Connected UNet for Medical Image Segmentation
- **Authors:** Huimin Huang; Lanfen Lin; Ruofeng Tong; Hongjie Hu; Qiaowei Zhang; Yutaro Iwamoto; Xianhua Han; Yen-Wei Chen; Jian Wu
- **Year:** 2020
- **Venue:** ICASSP 2020
- **Publication Type:** Conference
- **DOI:** 10.1109/ICASSP40776.2020.9053405
- **Verified Publisher URL:** [IEEE Xplore DOI record](https://doi.org/10.1109/ICASSP40776.2020.9053405)
- **Formal Publication Status:** Published
- **Open-access Full Text:** YES
- **Why This Paper Matters:** 对 Work2 的“尺度”问题尤其有价值，因为其设计明确围绕 full-scale feature aggregation。
- **Supported Claims:** 支持利用全尺度跳跃连接融合较低层细节和较高层语义特征；论文明确将不同尺度目标作为这种设计的动机之一。
- **Used In Planned Sections:** 1.2.4；2.4；4.1
- **Original Method Paper:** YES
- **Notes / Evidence Boundary:** 可以作为“已有工作重视跨尺度融合”的证据；不能写成它已经进行了“尺度特异结构证据调制”。([DOI](https://doi.org/10.1109%2Ficassp40776.2020.9053405 "https://doi.org/10.1109%2Ficassp40776.2020.9053405"))

### D4. `kervadec2021boundary`

- **Category:** D
- **Priority:** CORE
- **Title:** Boundary loss for highly unbalanced segmentation
- **Authors:** Hoel Kervadec; Jihene Bouchtiba; Christian Desrosiers; Eric Granger; Jose Dolz; Ismail Ben Ayed
- **Year:** 2021
- **Venue:** Medical Image Analysis, 67, 101851
- **Publication Type:** Journal
- **DOI:** 10.1016/j.media.2020.101851
- **Verified Publisher URL:** [Medical Image Analysis](https://doi.org/10.1016/j.media.2020.101851)
- **Formal Publication Status:** Published journal version
- **Open-access Full Text:** YES
- **Why This Paper Matters:** 直接支撑“边界信息是医学分割中独立于区域重叠信息的一类结构证据”。
- **Supported Claims:** 支持区域损失在高度类别不平衡条件下面临困难，以及利用预测边界与真实边界之间的距离构建边界型优化目标的研究路线。
- **Used In Planned Sections:** 1.1；1.2.4；2.4；4.1
- **Original Method Paper:** YES
- **Notes / Evidence Boundary:** Work2 当前不是“Boundary Loss 方法”，因此只用于结构/边界问题背景。([科学直通车](https://www.sciencedirect.com/science/article/abs/pii/S1361841520302152 "https://www.sciencedirect.com/science/article/abs/pii/S1361841520302152"))

### D5. `zhu2019anatomynet`

- **Category:** D
- **Priority:** SUPPORTING
- **Title:** AnatomyNet: Deep learning for fast and fully automated whole-volume segmentation of head and neck anatomy
- **Authors:** Wentao Zhu; Yufang Huang; Liang Zeng; Xuming Chen; Yong Liu; Zhen Qian; Nan Du; Wei Fan; Xiaohui Xie
- **Year:** 2019
- **Venue:** Medical Physics, 46(2), 576–589
- **Publication Type:** Journal
- **DOI:** 10.1002/mp.13300
- **Verified Publisher URL:** [Wiley DOI record](https://doi.org/10.1002/mp.13300)
- **Formal Publication Status:** Published
- **Open-access Full Text:** YES
- **Why This Paper Matters:** 为“小结构由于体积小、只占少量切片而更难分割”的背景提供具体医学任务证据。
- **Supported Claims:** 论文明确讨论某些小解剖结构仅出现在少量 CT slices 中，以及类别/体积不平衡给自动分割带来的困难。
- **Used In Planned Sections:** 1.1；1.2.4；2.4；4.1
- **Original Method Paper:** YES
- **Notes / Evidence Boundary:** 证据来自头颈 OAR，不应直接替换成“Gallbladder/Pancreas 必然如此”。([PubMed](https://pubmed.ncbi.nlm.nih.gov/30480818/ "https://pubmed.ncbi.nlm.nih.gov/30480818/"))

### D6. `gao2019focusnet`

- **Category:** D
- **Priority:** CORE
- **Title:** FocusNet: Imbalanced Large and Small Organ Segmentation with an End-to-End Deep Neural Network for Head and Neck CT Images
- **Authors:** Yunhe Gao; Rui Huang; Ming Chen; Zhe Wang; Jincheng Deng; Yuanyuan Chen; Yiwei Yang; Jie Zhang; Changjuan Tao; Hongsheng Li
- **Year:** 2019
- **Venue:** MICCAI 2019
- **Publication Type:** Conference
- **DOI:** 10.1007/978-3-030-32248-9\_92
- **Verified Publisher URL:** [Springer DOI record](https://doi.org/10.1007/978-3-030-32248-9_92)
- **Formal Publication Status:** Published
- **Open-access Full Text:** YES
- **Why This Paper Matters:** 是“大器官—小器官严重尺度不平衡”问题最直接的代表方法之一。
- **Supported Claims:** 支持医学多器官分割中不同器官大小可相差很大，小器官因像素/体素占比低而更难学习；其方法采用针对小器官的定位及高分辨率/multi-scale ROI 特征。
- **Used In Planned Sections:** 1.1；1.2.4；2.4；4.1
- **Original Method Paper:** YES
- **Notes / Evidence Boundary:** 同样属于头颈 CT；它支持“器官尺度不平衡”这一一般背景，不支持对 Synapse 某两个具体器官给出未经核验的统一难度排序。([ResearchGate](https://www.researchgate.net/publication/336380278_FocusNet_Imbalanced_Large_and_Small_Organ_Segmentation_with_an_End-to-End_Deep_Neural_Network_for_Head_and_Neck_CT_Images "https://www.researchgate.net/publication/336380278_FocusNet_Imbalanced_Large_and_Small_Organ_Segmentation_with_an_End-to-End_Deep_Neural_Network_for_Head_and_Neck_CT_Images"))

---

# E. 数据集来源

### E1. `landman2015btcv`

- **Category:** E
- **Priority:** CORE
- **Title:** 2015 MICCAI Multi-Atlas Labeling Beyond the Cranial Vault – Workshop and Challenge
- **Authors / Editors:** Bennett Landman; Zhoubing Xu; Juan Eugenio Iglesias; Martin Styner; Thomas Robin Langerak; Arno Klein
- **Year:** 2015
- **Venue:** MICCAI Multi-Atlas Labeling Beyond the Cranial Vault Workshop and Challenge / Synapse
- **Publication Type:** Challenge / Dataset
- **DOI:** 10.7303/syn3193805
- **Verified Publisher URL:** Official Vanderbilt MASI challenge page / Synapse DOI
- **Secondary Verified URL:** Official Synapse challenge
- **Formal Publication Status:** Official challenge/dataset record
- **Open-access Full Text:** N/A
- **Why This Paper Matters:** 是论文中通常称为 BTCV / Synapse multi-organ CT benchmark 的上游官方来源。
- **Supported Claims:** 支持该数据来源于 MICCAI 2015 Multi-Atlas Labeling Beyond the Cranial Vault challenge，并提供官方 Synapse 数据入口。
- **Used In Planned Sections:** 1.1；2.1；3.6.1；4.7.1
- **Original Method Paper:** NO
- **Notes / Evidence Boundary:** **最终正文必须把“官方 BTCV 数据集来源”与具体论文采用的 Synapse split、器官子集及预处理协议分开引用。** 当前来源不能自动证明 Work1 使用了某一固定训练/测试数量。([Vanderbilt University](https://my.vanderbilt.edu/masi/workshops/ "https://my.vanderbilt.edu/masi/workshops/"))

### E2. `bernard2018acdc`

- **Category:** E
- **Priority:** CORE
- **Title:** Deep Learning Techniques for Automatic MRI Cardiac Multi-Structures Segmentation and Diagnosis: Is the Problem Solved?
- **Authors:** Olivier Bernard et al.（ACDC challenge consortium；完整作者列表已由 PubMed 正式记录核验）
- **Year:** 2018
- **Venue:** IEEE Transactions on Medical Imaging, 37(11), 2514–2525
- **Publication Type:** Journal / Challenge analysis
- **DOI:** 10.1109/TMI.2018.2837502
- **Verified Publisher URL:** [IEEE DOI record](https://doi.org/10.1109/TMI.2018.2837502)
- **Secondary Verified URL:** PubMed
- **Formal Publication Status:** Published
- **Open-access Full Text:** YES
- **Why This Paper Matters:** ACDC 数据集和挑战的标准学术引用来源。
- **Supported Claims:** 支持 ACDC 心脏 MRI benchmark、相应心脏结构分割与自动评测研究背景。
- **Used In Planned Sections:** 2.1；3.6.1
- **Original Method Paper:** NO
- **Notes / Evidence Boundary:** 论文最终实验设置仍以 Work1 自己的 protocol 为准；ACDC 原始文献不能替代 Work1 的训练划分说明。([PubMed](https://pubmed.ncbi.nlm.nih.gov/29994302/ "https://pubmed.ncbi.nlm.nih.gov/29994302/"))

---

# F. 评价指标

### F1. `dice1945measures`

- **Category:** F
- **Priority:** FOUNDATIONAL
- **Title:** Measures of the Amount of Ecologic Association Between Species
- **Authors:** Lee R. Dice
- **Year:** 1945
- **Venue:** Ecology, 26(3), 297–302
- **Publication Type:** Journal
- **DOI:** 10.2307/1932409
- **Verified Publisher URL:** [Wiley/JSTOR DOI record](https://doi.org/10.2307/1932409)
- **Formal Publication Status:** Published
- **Open-access Full Text:** UNKNOWN
- **Why This Paper Matters:** Dice coefficient 的原始来源。
- **Supported Claims:** 支持 Dice 相似性度量的历史定义。
- **Used In Planned Sections:** 2.5；2.5.2
- **Original Method Paper:** NO
- **Notes / Evidence Boundary:** 医学分割中的实现与解释应和 Taha & Hanbury 等领域评价文献共同使用，而非只引用 1945 年生态学原文。([The Ecological Society of America](https://esajournals.onlinelibrary.wiley.com/doi/10.2307/1932409 "https://esajournals.onlinelibrary.wiley.com/doi/10.2307/1932409"))

### F2. `taha2015metrics`

- **Category:** F
- **Priority:** CORE
- **Title:** Metrics for evaluating 3D medical image segmentation: analysis, selection, and tool
- **Authors:** A. A. Taha; Allan Hanbury
- **Year:** 2015
- **Venue:** BMC Medical Imaging, 15, 29
- **Publication Type:** Journal
- **DOI:** 10.1186/s12880-015-0068-x
- **Verified Publisher URL:** [BMC Medical Imaging](https://doi.org/10.1186/s12880-015-0068-x)
- **Formal Publication Status:** Published
- **Open-access Full Text:** YES
- **Why This Paper Matters:** 第2章评价指标最有用的医学分割专门来源之一。
- **Supported Claims:** 支持 Dice 等区域重叠指标与 Hausdorff 等空间距离指标的区别；正式给出 HD 定义，并说明 HD 对异常值敏感及可使用 q-th quantile Hausdorff 以降低异常值影响。([DOI](https://doi.org/10.1186/s12880-015-0068-x "https://doi.org/10.1186/s12880-015-0068-x"))
- **Used In Planned Sections:** 2.5；2.5.2
- **Original Method Paper:** NO
- **Notes / Evidence Boundary:** 文中支持“quantile Hausdorff”概念，但当前核验内容没有将 **q=0.95** 明确固定为统一医学分割标准。因此最终写 `HD95` 公式前仍应补一个与本文实际 evaluation implementation/protocol 对齐的来源。([DOI](https://doi.org/10.1186/s12880-015-0068-x "https://doi.org/10.1186/s12880-015-0068-x"))

---

# G. 高质量综述

### G1. `litjens2017survey`

- **Category:** G
- **Priority:** CORE
- **Title:** A survey on deep learning in medical image analysis
- **Authors:** Geert Litjens; Thijs Kooi; Babak Ehteshami Bejnordi; Arnaud Arindra Adiyoso Setio; Francesco Ciompi; Mohsen Ghafoorian; Jeroen A. W. M. van der Laak; Bram van Ginneken; Clara I. Sánchez
- **Year:** 2017
- **Venue:** Medical Image Analysis, 42, 60–88
- **Publication Type:** Review
- **DOI:** 10.1016/j.media.2017.07.005
- **Verified Publisher URL:** [Medical Image Analysis](https://doi.org/10.1016/j.media.2017.07.005)
- **Formal Publication Status:** Published
- **Open-access Full Text:** YES
- **Why This Paper Matters:** 可承担第1章医学图像深度学习发展背景的宏观来源。
- **Supported Claims:** 支持深度学习在医学图像分析中的主要任务类别、CNN 应用发展及分割研究的大背景。
- **Used In Planned Sections:** 1.1；1.2；1.3
- **Original Method Paper:** NO
- **Notes / Evidence Boundary:** 具体网络仍引用原始论文。([DOI](https://doi.org/10.1016/j.media.2017.07.005 "https://doi.org/10.1016/j.media.2017.07.005"))

### G2. `hesamian2019segmentationreview`

- **Category:** G
- **Priority:** CORE
- **Title:** Deep Learning Techniques for Medical Image Segmentation: Achievements and Challenges
- **Authors:** Mohammad Hesam Hesamian; Wenjing Jia; Xiangjian He; Paul Kennedy
- **Year:** 2019
- **Venue:** Journal of Digital Imaging, 32, 582–596
- **Publication Type:** Review
- **DOI:** 10.1007/s10278-019-00227-x
- **Verified Publisher URL:** [SpringerLink](https://doi.org/10.1007/s10278-019-00227-x)
- **Formal Publication Status:** Published
- **Open-access Full Text:** YES
- **Why This Paper Matters:** 比综合医学影像综述更聚焦“分割”本身。
- **Supported Claims:** 支持深度学习医学图像分割主要技术路线、实际挑战和 CNN 时代研究背景的宏观总结。
- **Used In Planned Sections:** 1.1；1.2.1；1.3
- **Original Method Paper:** NO
- **Notes / Evidence Boundary:** 不用综述替代 U-Net、V-Net 等原始论文。([Springer](https://link.springer.com/article/10.1007/s10278-019-00227-x "https://link.springer.com/article/10.1007/s10278-019-00227-x"))

### G3. `shamshad2023transformersurvey`

- **Category:** G
- **Priority:** SUPPORTING
- **Title:** Transformers in medical imaging: A survey
- **Authors:** Fahad Shamshad; Salman Khan; Syed Waqas Zamir; Muhammad Haris Khan; Munawar Hayat; Fahad Shahbaz Khan; Huazhu Fu
- **Year:** 2023
- **Venue:** Medical Image Analysis, 88, 102802
- **Publication Type:** Review
- **DOI:** 10.1016/j.media.2023.102802
- **Verified Publisher URL:** [Medical Image Analysis](https://doi.org/10.1016/j.media.2023.102802)
- **Formal Publication Status:** Published
- **Open-access Full Text:** YES
- **Why This Paper Matters:** 用于第一章从 CNN 过渡到 Transformer 及全局关系建模的宏观整理。
- **Supported Claims:** 支持 Transformer 在医学影像中的主要应用类别、技术演进及其相较卷积局部建模的全局关系建模动机。
- **Used In Planned Sections:** 1.2.2；1.3；2.3.1
- **Original Method Paper:** NO
- **Notes / Evidence Boundary:** 介绍 TransUNet、UNETR 等具体模型时仍引用其原始论文。([科学直通车](https://www.sciencedirect.com/science/article/pii/S1361841523000634 "https://www.sciencedirect.com/science/article/pii/S1361841523000634"))

---

# 二、Coverage Matrix

| Planned SectionRequired TopicCore ReferencesCoverage Status |                                                 |                                                                                                                                                         |                                                                                                                                             |
| ----------------------------------------------------------- | ----------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------- |
| **1.1**                                                     | 三维分割背景；局部细节、上下文、尺度/小结构问题                        | `litjens2017survey`, `hesamian2019segmentationreview`, `cicek2016threeDunet`, `gao2019focusnet`, `kervadec2021boundary`                                 | **SUFFICIENT**                                                                                                                              |
| **1.2.1**                                                   | CNN、U-Net、3D CNN、现代强 CNN baseline               | `long2015fcn`, `ronneberger2015unet`, `cicek2016threeDunet`, `milletari2016vnet`, `isensee2021nnunet`, `kamnitsas2017deepmedic`                         | **SUFFICIENT**                                                                                                                              |
| **1.2.2**                                                   | Transformer、CNN-Transformer、3D Transformer、效率矛盾 | `vaswani2017attention`, `chen2024transunet`, `hatamizadeh2022unetr`, `hatamizadeh2022swinunetr`, `xie2021cotr`, `zhou2023nnformer`, `shaker2024unetrpp` | **SUFFICIENT**                                                                                                                              |
| **1.2.3**                                                   | xLSTM、Vision-LSTM、高效长距离建模、少量 SSM 背景             | `beck2024xlstm`, `alkin2025visionlstm`, `dutta2025visionxlstmunet`, `liu2024swinumamba`, `wu2026vilunet`                                                | **SUFFICIENT**                                                                                                                              |
| **1.2.4**                                                   | 多尺度、跨层融合、边界、小器官/尺度不平衡                           | `zhou2018unetpp`, `ibtehaz2020multiresunet`, `huang2020unet3plus`, `kervadec2021boundary`, `zhu2019anatomynet`, `gao2019focusnet`                       | **SUFFICIENT**                                                                                                                              |
| **1.3**                                                     | 收束为局部—全局与尺度结构两类研究缺口                             | A+B+C+D 关键文献联合                                                                                                                                          | **SUFFICIENT**                                                                                                                              |
| **2.1**                                                     | 体数据、三维分割任务、3D CNN                               | `cicek2016threeDunet`, `milletari2016vnet`, `kamnitsas2017deepmedic`, dataset refs                                                                      | **SUFFICIENT**                                                                                                                              |
| **2.2**                                                     | 卷积、U 形编码器—解码器、跳跃连接                              | `ronneberger2015unet`, `cicek2016threeDunet`, `milletari2016vnet`, `zhou2018unetpp`                                                                     | **SUFFICIENT**                                                                                                                              |
| **2.3.1**                                                   | Transformer 与自注意力；三维计算特性                        | `vaswani2017attention`, `hatamizadeh2022unetr`, `xie2021cotr`, `shaker2024unetrpp`                                                                      | **SUFFICIENT**                                                                                                                              |
| **2.3.2**                                                   | xLSTM 与 Vision-xLSTM                            | `beck2024xlstm`, `alkin2025visionlstm`, `dutta2025visionxlstmunet`, `wu2026vilunet`                                                                     | **SUFFICIENT**                                                                                                                              |
| **2.4**                                                     | 多尺度特征、浅层细节/深层语义、尺度结构问题                          | `zhou2018unetpp`, `huang2020unet3plus`, `gao2019focusnet`, `kervadec2021boundary`                                                                       | **SUFFICIENT**                                                                                                                              |
| **2.5**                                                     | Dice、HD95；后续 loss/efficiency definitions        | `dice1945measures`, `taha2015metrics`                                                                                                                   | **PARTIAL** — Dice 与 HD/quantile HD 已覆盖；仍需与论文实际实现对齐的 **HD95=95th percentile** 来源，以及最终实际采用的 loss / FLOPs / VRAM / inference-time protocol 来源 |
| **3.1**                                                     | Work1 的 CNN 局部 + ViL 长距离动机                      | `wu2026vilunet`, `ronneberger2015unet`, `vaswani2017attention`, `beck2024xlstm`, `alkin2025visionlstm`                                                  | **SUFFICIENT**                                                                                                                              |
| **3.2–3.5**                                                 | Work1 架构、局部编码、ViL、多方向建模、解码                      | `wu2026vilunet`, `beck2024xlstm`, `alkin2025visionlstm`                                                                                                 | **SUFFICIENT** — 以论文稿件为方法事实源，不能用恢复代码覆盖论文描述                                                                                                  |
| **4.1**                                                     | 为什么在 Work1 后继续处理尺度结构问题                          | `huang2020unet3plus`, `gao2019focusnet`, `kervadec2021boundary`, `zhu2019anatomynet`, `zhou2018unetpp`                                                  | **SUFFICIENT**                                                                                                                              |
| **4.2**                                                     | R2 Full-History / No-History 前置分析               | 外部 D 类文献只负责背景；R2 数值由 `FACTS_AND_NUMBERS.md` 的 `EXPERIMENTALLY_VERIFIED` 证据负责                                                                            | **SUFFICIENT** — 不需要寻找外部论文“证明 No-History 更好”                                                                                                |

其中 4.2 的证据身份边界已经被仓库明确冻结为“pre-study evidence，而非最终 Work2 efficacy evidence”。

---

# 三、Candidate Expansion Pool

以下文献暂不进入 31 篇核心池，主要用于后续小节需要更细证据时扩展。

| TitleYearWhy CandidatePotential Section                                                                                                 |      |                                                                                                                                                                                                                                                                                                                                                                                                                    |                 |
| --------------------------------------------------------------------------------------------------------------------------------------- | ---- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | --------------- |
| **xLSTM-UNet can be an Effective 2D & 3D Medical Image Segmentation Backbone with Vision-LSTM (ViL) better than its Mamba Counterpart** | 2024 | 与 Work1 极近；arXiv 原始记录已确认，但公开二级来源又称其曾发表于 IEEE BHI，正式版本元数据需要进一步统一后再升级。([arXiv](https://arxiv.org/abs/2407.01530 "https://arxiv.org/abs/2407.01530"))                                                                                                                                                                                                                                                                 | 1.2.3；2.3.2；3.1 |
| **SegMamba: Long-Range Sequential Modeling Mamba for 3D Medical Image Segmentation**                                                    | 2024 | 正式 MICCAI 2024；可在需要更充分说明 SSM 作为高效长距离路线时加入，不宜在主线中压过 ViL。([MICCAI 2025 - Open Access](https://papers.miccai.org/miccai-2024/676-Paper0663.html "https://papers.miccai.org/miccai-2024/676-Paper0663.html"))                                                                                                                                                                                                          | 1.2.3           |
| **TransBTS: Multimodal Brain Tumor Segmentation Using Transformer**                                                                     | 2021 | 3D CNN + Transformer 的早期代表；适合补充 CNN 局部—Transformer 全局混合路线。DOI 10.1007/978-3-030-87193-2\_11。([arXiv](https://arxiv.org/abs/2103.04430 "https://arxiv.org/abs/2103.04430"))                                                                                                                                                                                                                                         | 1.2.2；3.1       |
| **UNesT: Local Spatial Representation Learning with Hierarchical Transformer for Efficient Medical Segmentation**                       | 2023 | 正式 Medical Image Analysis 论文；对三维 heterogeneous tissues、不同尺寸结构和 hierarchical spatial representation 很有价值。([PubMed Central (PMC)](https://pmc.ncbi.nlm.nih.gov/articles/PMC11229077/ "https://pmc.ncbi.nlm.nih.gov/articles/PMC11229077/"))                                                                                                                                                                          | 1.2.2；1.2.4；2.4 |
| **H-DenseUNet: Hybrid Densely Connected UNet for Liver and Tumor Segmentation From CT Volumes**                                         | 2018 | 可补充二维 intra-slice 与三维 volumetric context 融合及三维计算代价背景。                                                                                                                                                                                                                                                                                                                                                              | 1.2.1；2.1       |
| **FocusNetv2: Imbalanced large and small organ segmentation with adversarial shape constraint for head and neck CT images**             | 2021 | FocusNet 的正式期刊扩展；进一步加入 shape constraint，对 Work2 后续“结构信息”论证可能有帮助。([科学直通车](https://www.sciencedirect.com/science/article/abs/pii/S136184152030195X "https://www.sciencedirect.com/science/article/abs/pii/S136184152030195X"))                                                                                                                                                                                       | 1.2.4；4.1       |
| **clDice - A Novel Topology-Preserving Loss Function for Tubular Structure Segmentation**                                               | 2021 | 若后续需要讨论“结构信息不等于单纯区域重叠”或 topology-aware segmentation，可加入；当前 Work2 并非拓扑保持模型，因此暂不核心化。([开放获取计算机视觉论坛](https://openaccess.thecvf.com/content/CVPR2021/html/Shit_clDice_-_A_Novel_Topology-Preserving_Loss_Function_for_Tubular_Structure_CVPR_2021_paper.html "https://openaccess.thecvf.com/content/CVPR2021/html/Shit_clDice_-_A_Novel_Topology-Preserving_Loss_Function_for_Tubular_Structure_CVPR_2021_paper.html")) | 1.2.4；2.4       |
| **Attention U-Net: Learning Where to Look for the Pancreas**                                                                            | 2018 | 对腹部器官、目标结构显著性和 attention gate 有参考意义，但当前核验的主要版本是预印本，因此暂放候选。([arXiv](https://arxiv.org/abs/1804.03999 "https://arxiv.org/abs/1804.03999"))                                                                                                                                                                                                                                                                           | 1.2.1；1.2.4     |
| **Comparing Images Using the Hausdorff Distance**                                                                                       | 1993 | Hausdorff distance 在图像比较中的经典原始来源；如第2章希望追溯 HD 理论来源，可补入。Taha & Hanbury 已明确引用该方法。([DOI](https://doi.org/10.1186/s12880-015-0068-x "https://doi.org/10.1186/s12880-015-0068-x"))                                                                                                                                                                                                                                       | 2.5.2           |
| **A multiple gated boosting network for multi-organ medical image segmentation**                                                        | 2023 | 其 Synapse 表中 Gallbladder、Pancreas 在多种方法上相对较低，并明确讨论这两类器官，可用于以后建立“特定 benchmark 下困难器官”的实证证据，但不宜将一张表泛化成普遍规律。([工程与技术学会](https://ietresearch.onlinelibrary.wiley.com/doi/10.1049/ipr2.12852 "https://ietresearch.onlinelibrary.wiley.com/doi/10.1049/ipr2.12852"))                                                                                                                                                       | 1.2.4；4.1       |

---

# 四、Risk Report

## UNVERIFIED\_REFERENCES

1. **xLSTM-UNet 正式出版版本**：arXiv 2407.01530 已核验；项目主页仍以 arXiv BibTeX 为主，但较新的正式论文参考文献将其列为 IEEE EMBS BHI 2024 conference paper。由于本次没有取得对应 IEEE publisher record，因此暂不进入核心池。([Tianrun Chen](https://tianrun-chen.github.io/xLSTM-UNet/ "https://tianrun-chen.github.io/xLSTM-UNet/"))
2. 其余 **31 篇核心文献均已获得足以确认 title / authors / year / venue 或正式 challenge identity 的来源**；不存在 5 篇以上关键核心文献无法核验的情况。

## PUBLICATION\_STATUS\_UNCERTAINTY

**ViL-UNet：部分存在。**

能够确认的是：

- WCCI 2026 官方 Proceedings 将其列为 `ijcnn_pap4144`，并提供 `pdf` 和 `view` 条目；([WCCI 2026](https://wcci.klinkhamergroup.com/papers/file_index.html "WCCI 2026 Proceedings"))
- WCCI 2026 官方 programme 将其列于 IJCNN Paper session；([WCCI 2026](https://wcci.klinkhamergroup.com/papers/at_a_glance.html "https://wcci.klinkhamergroup.com/papers/at_a_glance.html"))
- 现有论文稿件首页确认完整作者列表；
- WCCI 官方参会证明确认 Yong Wu 以该论文参加并展示于 WCCI 2026。

尚未确认的是：

- IEEE Xplore 独立 article record；
- IEEE article number；
- 正式页码；
- DOI。

因此现在可以称其为 **WCCI 2026 / IJCNN conference proceedings paper**，但不得自行补 IEEE Xplore 元数据。

## DOI\_MISSING

- `vaswani2017attention`：NeurIPS 正式记录未提供常规 DOI。
- `alkin2025visionlstm`：ICLR 正式记录未核验到 DOI。
- `wu2026vilunet`：截至本次检索未找到可验证 DOI。

这些“缺 DOI”不等于文献不存在，也不得人为生成 DOI。

## SOURCE\_CONFLICT

### 1. Work1 ACDC LV 数值冲突

仓库 `FACTS_AND_NUMBERS.md` 当前治理值为：

- ACDC LV DSC = **96.65%**，身份 `PAPER_REPORTED`。

但当前 Library 中的 Work1 论文稿件 Table II 显示：

- ViL-UNet LV = **96.56**。

这是一个真实的数字源冲突。

**P-003A 不对此做裁决，也不修改仓库事实。** 后续应由论文总导师核查最终 camera-ready / proceedings PDF，再决定 `FACTS_AND_NUMBERS.md` 是否需要单独修正。当前正式硕士论文写作继续服从仓库治理值，不能在正文中自行改成 96.56。

### 2. Work1 论文描述与恢复代码

研究仓库已经记录若干论文描述与 recovered code 的结构差异，包括 ViL-enhanced skip connections、block depth、方向遍历等。该冲突不属于外部文献错误，而属于 **paper evidence 与 code evidence 身份不同**。第3章应以最终论文/批准事实源描述 Work1，不能用 recovered code 静默改写论文方法。

## CLAIM\_SUPPORT\_RISK

### 风险1：不得写“Vision-xLSTM / Work1 严格 O(N)”

xLSTM 原论文支持 mLSTM 的可并行矩阵记忆机制，但不能由此直接推导具体 Work1 实现是严格线性复杂度。尤其仓库已记录 recovered implementation 显式构造 `S × S` 矩阵，因此“Work1 为严格 O(N)”不是当前安全 claim。

安全写法应在后续 Task Card 中进一步基于最终论文原文决定，例如“避免标准全局 self-attention 的直接使用”“探索更高效的长距离建模方式”，而不是先验写死复杂度。

### 风险2：Gallbladder / Pancreas 的“困难器官”措辞

已有 Synapse 公开实验确实显示在多种模型中 Gallbladder、尤其 Pancreas 的 Dice 往往低于 Liver、Spleen、Aorta 等结构，例如一篇正式实验表中 TransUNet 对 Gallbladder/Pancreas 的结果明显低于 Liver。([工程与技术学会](https://ietresearch.onlinelibrary.wiley.com/doi/10.1049/ipr2.12852 "https://ietresearch.onlinelibrary.wiley.com/doi/10.1049/ipr2.12852"))

但现阶段安全结论只能是：

> “在 Synapse 等腹部多器官 benchmark 的多项已发表实验中，Gallbladder 与 Pancreas 可表现出较低的分割精度。”

不能直接升级为：

> “Gallbladder 和 Pancreas 公认是最困难的两个器官。”

若第4章需要更强的具体论断，应再增加至少一个**原始腹部多器官研究/benchmark**作为交叉证据。

### 风险3：多尺度融合 ≠ 尺度特异结构证据

UNet++、MultiResUNet、UNet 3+ 等可以真实支持：

- 多尺度特征融合；
- 深浅层信息结合；
- full-scale aggregation；
- 不同尺度结构需要被考虑。

但它们**不能支持**：

- SSE 一定更合理；
- 每个尺度必须完全独立；
- IM 比历史传播更好；
- SDE 必然改善边界。

这些仍属于 Work2 自身研究假设与实验问题。

## WORK1\_PUBLICATION\_STATUS

**Current status as of 2026-08-28:**

`WCCI 2026 / IJCNN OFFICIAL PROCEEDINGS LISTING VERIFIED`

`WCCI 2026 PROGRAMME PRESENCE VERIFIED`

`AUTHOR LIST VERIFIED FROM PAPER MANUSCRIPT`

`CONFERENCE PRESENTATION VERIFIED`

`IEEE XPLORE DOI / ARTICLE NUMBER NOT VERIFIED`

因此建议当前内部参考文献记录暂写：

> Wu, Yong; Huang, Wenjun; Hu, Ziyu; Ma, Yiqi; Fang, Pi; Yin, Yuechen; Zhong, Qinghua. *ViL-UNet: Beyond Transformers for 3D Medical Image Segmentation with Vision-xLSTM*. IJCNN / IEEE WCCI 2026. DOI: pending verification.

其中 **“pending verification”只是文献池备注，未来 BibTeX 的 DOI 字段应留空，而不是把这句话写入 DOI 字段。**

## DATASET\_SOURCE\_AMBIGUITY

### Synapse / BTCV

存在命名层面的歧义：

- 官方上游来源是 **2015 MICCAI Multi-Atlas Labeling Beyond the Cranial Vault – Workshop and Challenge**；
- 数据通过 Synapse 平台分发，因此大量后续论文简称为 **Synapse multi-organ dataset**；
- “BTCV”“Synapse”“Multi-Atlas Abdomen”在后续论文中经常被近似使用，但具体训练/测试划分、器官子集和预处理未必完全相同。

因此最终学位论文建议采用“双来源原则”：

**数据来源身份** → 引用 `landman2015btcv` / official Synapse challenge。

**实际实验 protocol** → 引用 Work1/Work2 自己真实采用的 split、preprocessing 与代码/实验记录。

绝不能根据其他论文常用的“18 train / 12 test”等惯例自动填入本论文。

---

# P-003A STATUS

**PARTIAL**

`CORE_REFERENCE_COUNT: 31`

`CANDIDATE_REFERENCE_COUNT: 10`

`COVERAGE_SUMMARY:`
16 个指定 planned section 中，**15 个为 SUFFICIENT，1 个为 PARTIAL，0 个为 MISSING**。唯一 PARTIAL 为 `2.5`：Dice、HD 与 quantile Hausdorff 已有可靠来源，但最终 `HD95=95th percentile` 的实现级来源、实际 loss 以及效率指标测量 protocol 尚需随实验事实进一步补齐。

`HIGH_RISK_ITEMS:`

1. ViL-UNet 已确认 WCCI 2026/IJCNN proceedings 身份，但 DOI / IEEE Xplore article number 尚未核验；
2. `FACTS_AND_NUMBERS.md` 的 ACDC LV=96.65 与现存 Work1 稿件 Table II 的 LV=96.56 存在源冲突，**不得自行修正**；
3. 不得把 xLSTM / Vision-LSTM 文献转化为“Work1 严格 O(N)”；
4. Synapse/BTCV 的数据身份与具体实验 split 必须分开治理；
5. Gallbladder/Pancreas 的困难性可以写成 benchmark-bounded observation，不能未经更多证据泛化成普遍定律；
6. Work2 的 SSE / IM / SDE 与 No-History 结论不能由外部文献提前“证明”。

`READY_FOR_SUPERVISOR_REVIEW: YES`

之所以状态为 **PARTIAL 而不是 COMPLETE**，并不是核心文献池数量或主线覆盖不足，而是目前仍有两个应在正式写入 `references.bib` 前处理的元数据/证据问题：**Work1 DOI/IEEE Xplore 状态**以及**2.5 的 HD95 实现级引用**。31 篇核心文献本身已经达到论文总导师进行第一轮筛选和删减的条件。