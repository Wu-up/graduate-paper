# Literature Evidence Pool

This file is the governed literature index for formal thesis planning and drafting. It is derived from `docs/review_packets/P-003A_CORE_LITERATURE_POOL_RAW.md` and updated by P-003B-R1 source-governance corrections.

## Governance Rules

- Specific methods should cite original method papers before review papers.
- Reviews support macro-level classification, development trends, and framing, not method-specific invention claims.
- Search engines, project pages, and secondary indexes are not final scholarly sources when a publisher, proceedings, DOI, or official challenge source exists.
- A reference may support only the claim actually present within its own evidence boundary.
- Do not infer causal conclusions, implementation properties, or benchmark general laws beyond a paper's text and experimental scope.
- External literature must not be used to pre-prove Work2 hypotheses such as SSE effectiveness, IM superiority over history propagation, SDE boundary gains, or No-History superiority.
- Work1 paper facts and Work2 experiment facts remain governed by `docs/FACTS_AND_NUMBERS.md` and `docs/PLACEHOLDER_LEDGER.md`.
- Work1 publication metadata is currently `PUBLICATION_PENDING` and `DOI_NOT_YET_AVAILABLE`; do not invent DOI, IEEE article number, pages, volume, or issue.
- HD95 theory uses `taha2015metrics`; final Work1/Work2 HD95 implementation details must be closed from the actual evaluation code or software protocol.

## Core Literature Pool Summary

- Core reference count: 31
- Candidate expansion count: 10
- Coverage summary after P-003B-R1: 15 SUFFICIENT, 1 PARTIAL, 0 MISSING
- Remaining partial coverage: Section 2.5 final implementation protocol, loss protocol, and efficiency measurement protocol

## A CNN / U-Net Foundations

### A1. `long2015fcn`

- Citation Key: `long2015fcn`
- Priority: FOUNDATIONAL
- Title: Fully Convolutional Networks for Semantic Segmentation
- Authors: Jonathan Long; Evan Shelhamer; Trevor Darrell
- Year: 2015
- Venue: CVPR 2015
- Publication Type: Conference
- DOI: 10.1109/CVPR.2015.7298965
- Verified URL: [CVF Open Access](https://openaccess.thecvf.com/content_cvpr_2015/html/Long_Fully_Convolutional_Networks_2015_CVPR_paper.html); Secondary: DOI/IEEE record
- Publication Status: Published
- Supported Claims: 支持全卷积网络通过卷积化结构进行密集预测，并利用跨层连接将深层语义信息与较浅层空间信息结合。
- Used In Planned Sections: 1.2.1；2.2
- Evidence Boundary: 不用于证明 U-Net 或 CNN “必然缺乏全局建模能力”；其功能主要是历史与结构背景。([开放获取计算机视觉论坛](https://openaccess.thecvf.com/content_cvpr_2015/html/Long_Fully_Convolutional_Networks_2015_CVPR_paper.html "https://openaccess.thecvf.com/content_cvpr_2015/html/Long_Fully_Convolutional_Networks_2015_CVPR_paper.html"))

### A2. `ronneberger2015unet`

- Citation Key: `ronneberger2015unet`
- Priority: FOUNDATIONAL
- Title: U-Net: Convolutional Networks for Biomedical Image Segmentation
- Authors: Olaf Ronneberger; Philipp Fischer; Thomas Brox
- Year: 2015
- Venue: MICCAI 2015, LNCS 9351
- Publication Type: Conference
- DOI: 10.1007/978-3-319-24574-4\_28
- Verified URL: [SpringerLink](https://doi.org/10.1007/978-3-319-24574-4_28); Secondary: arXiv version available
- Publication Status: Published
- Supported Claims: 支持 U-Net 采用收缩路径与对称扩展路径，并通过对应层特征传递改善定位信息恢复的描述。
- Used In Planned Sections: 1.2.1；2.2；2.2.2；3.1；3.2–3.5
- Evidence Boundary: 可用于描述 U-Net 本身结构；不能单独用于声称其在三维任务、长距离依赖或小器官问题上的普遍局限。([DOI](https://doi.org/10.1007/978-3-319-24574-4_28 "https://doi.org/10.1007/978-3-319-24574-4_28"))

### A3. `cicek2016threeDunet`

- Citation Key: `cicek2016threeDunet`
- Priority: FOUNDATIONAL
- Title: 3D U-Net: Learning Dense Volumetric Segmentation from Sparse Annotation
- Authors: Özgün Çiçek; Ahmed Abdulkadir; Soeren S. Lienkamp; Thomas Brox; Olaf Ronneberger
- Year: 2016
- Venue: MICCAI 2016
- Publication Type: Conference
- DOI: 10.1007/978-3-319-46723-8\_49
- Verified URL: [SpringerLink](https://doi.org/10.1007/978-3-319-46723-8_49); Secondary: arXiv
- Publication Status: Published
- Supported Claims: 支持将 U-Net 的二维运算扩展至三维卷积、池化和上采样，从而直接对体数据进行密集分割。
- Used In Planned Sections: 1.1；1.2.1；2.1；2.2；2.2.1
- Evidence Boundary: 不将其早期具体实验设置概括成现代三维分割的统一训练范式。([DOI](https://doi.org/10.1007/978-3-319-46723-8_49?jav=VoR\&rel=cite-as\&urlappend=%3Fref%3DPDF "https://doi.org/10.1007/978-3-319-46723-8_49?jav=VoR\&rel=cite-as\&urlappend=%3Fref%3DPDF"))

### A4. `milletari2016vnet`

- Citation Key: `milletari2016vnet`
- Priority: FOUNDATIONAL
- Title: V-Net: Fully Convolutional Neural Networks for Volumetric Medical Image Segmentation
- Authors: Fausto Milletari; Nassir Navab; Seyed-Ahmad Ahmadi
- Year: 2016
- Venue: 2016 Fourth International Conference on 3D Vision (3DV)
- Publication Type: Conference
- DOI: 10.1109/3DV.2016.79
- Verified URL: [IEEE DOI record](https://doi.org/10.1109/3DV.2016.79)
- Publication Status: Published
- Supported Claims: 支持使用三维全卷积网络直接进行体数据分割；论文还采用基于 Dice 的目标函数处理分割学习。
- Used In Planned Sections: 1.2.1；2.1；2.2.1；2.5
- Evidence Boundary: Dice 指标的正式定义仍优先使用 F 类专门来源，而非仅引用 V-Net。([IEEE Xplore](https://ieeexplore.ieee.org/document/7785132/ "https://ieeexplore.ieee.org/document/7785132/"))

### A5. `isensee2021nnunet`

- Citation Key: `isensee2021nnunet`
- Priority: CORE
- Title: nnU-Net: a self-configuring method for deep learning-based biomedical image segmentation
- Authors: Fabian Isensee; Paul F. Jaeger; Simon A. A. Kohl; Jens Petersen; Klaus H. Maier-Hein
- Year: 2021
- Venue: Nature Methods, 18, 203–211
- Publication Type: Journal
- DOI: 10.1038/s41592-020-01008-z
- Verified URL: [Nature Methods](https://doi.org/10.1038/s41592-020-01008-z)
- Publication Status: Published
- Supported Claims: 支持根据数据集属性自动配置预处理、网络、训练与后处理方案，并说明 U-Net 类架构经系统配置后仍具有很强的医学分割基准能力。
- Used In Planned Sections: 1.2.1；1.3；2.2
- Evidence Boundary: 不能把 nnU-Net 的强性能解释成“架构创新不再必要”。([DOI](https://doi.org/10.1038/s41592-020-01008-z "https://doi.org/10.1038/s41592-020-01008-z"))

### A6. `kamnitsas2017deepmedic`

- Citation Key: `kamnitsas2017deepmedic`
- Priority: SUPPORTING
- Title: Efficient multi-scale 3D CNN with fully connected CRF for accurate brain lesion segmentation
- Authors: Konstantinos Kamnitsas; Christian Ledig; Virginia F. J. Newcombe; Joanna P. Simpson; Andrew D. Kane; David K. Menon; Daniel Rueckert; Ben Glocker
- Year: 2017
- Venue: Medical Image Analysis, 36, 61–78
- Publication Type: Journal
- DOI: 10.1016/j.media.2016.10.004
- Verified URL: [Medical Image Analysis](https://doi.org/10.1016/j.media.2016.10.004)
- Publication Status: Published
- Supported Claims: 支持利用并行多尺度三维卷积路径同时处理局部信息与更大范围上下文的描述。
- Used In Planned Sections: 1.2.1；1.2.4；2.1；2.4
- Evidence Boundary: 不把该方法的脑病灶场景直接等同于腹部多器官问题。([科学直通车](https://www.sciencedirect.com/science/article/pii/S1361841516301839 "https://www.sciencedirect.com/science/article/pii/S1361841516301839"))

## B Transformer Medical Segmentation

### B1. `vaswani2017attention`

- Citation Key: `vaswani2017attention`
- Priority: FOUNDATIONAL
- Title: Attention Is All You Need
- Authors: Ashish Vaswani; Noam Shazeer; Niki Parmar; Jakob Uszkoreit; Llion Jones; Aidan N. Gomez; Łukasz Kaiser; Illia Polosukhin
- Year: 2017
- Venue: Advances in Neural Information Processing Systems 30
- Publication Type: Conference
- DOI: NONE VERIFIED
- Verified URL: [NeurIPS proceedings](https://papers.nips.cc/paper/7181-attention-is-all-you-need)
- Publication Status: Published
- Supported Claims: 支持 Transformer 以注意力机制替代循环结构进行序列位置之间的信息交互，并支持对 self-attention 机制本身的理论介绍。
- Used In Planned Sections: 1.2.2；2.3；2.3.1；3.1
- Evidence Boundary: 其研究对象不是三维医学图像，因此“医学三维场景计算负担”应由后续医学 Transformer 原始论文共同支撑。([NeurIPS Proceedings](https://proceedings.neurips.cc/paper_files/paper/2017/hash/3f5ee243547dee91fbd053c1c4a845aa-Abstract.html "https://proceedings.neurips.cc/paper_files/paper/2017/hash/3f5ee243547dee91fbd053c1c4a845aa-Abstract.html"))

### B2. `chen2024transunet`

- Citation Key: `chen2024transunet`
- Priority: CORE
- Title: TransUNet: Rethinking the U-Net architecture design for medical image segmentation through the lens of transformers
- Authors: Jieneng Chen; Jieru Mei; Xianhang Li; Yongyi Lu; Qihang Yu; Qingyue Wei; Xiangde Luo; Yutong Xie; Ehsan Adeli; Yan Wang; Matthew P. Lungren; Shaoting Zhang; Lei Xing; Le Lu; Alan Yuille; Yuyin Zhou
- Year: 2024
- Venue: Medical Image Analysis, 97, 103280
- Publication Type: Journal
- DOI: 10.1016/j.media.2024.103280
- Verified URL: [Medical Image Analysis](https://doi.org/10.1016/j.media.2024.103280)
- Publication Status: Published; formal journal version
- Supported Claims: 支持将 Transformer 的全局关系建模与 U 形结构中的局部/高分辨率信息恢复结合；正式版本同时讨论二维和三维实现。
- Used In Planned Sections: 1.2.2；1.3；2.3.1；3.1
- Evidence Boundary: 文献池采用 2024 正式期刊版，不将 2021 arXiv 版本再作为第二篇核心文献。([科学直通车](https://www.sciencedirect.com/science/article/pii/S1361841524002056 "https://www.sciencedirect.com/science/article/pii/S1361841524002056"))

### B3. `hatamizadeh2022unetr`

- Citation Key: `hatamizadeh2022unetr`
- Priority: CORE
- Title: UNETR: Transformers for 3D Medical Image Segmentation
- Authors: Ali Hatamizadeh; Yucheng Tang; Vishwesh Nath; Dong Yang; Andriy Myronenko; Bennett Landman; Holger R. Roth; Daguang Xu
- Year: 2022
- Venue: WACV 2022
- Publication Type: Conference
- DOI: 10.1109/WACV51458.2022.00181
- Verified URL: [IEEE DOI record](https://doi.org/10.1109/WACV51458.2022.00181)
- Publication Status: Published
- Supported Claims: 支持将三维体数据划分为序列表示并由 Transformer 编码全局信息，同时借助不同层级特征连接解码器恢复空间细节。
- Used In Planned Sections: 1.2.2；2.3.1；3.1
- Evidence Boundary: 可用于讨论卷积局部感受野与 Transformer 长距离建模动机，但不应据此概括所有 CNN 的能力。([DOI](https://doi.org/10.1109/WACV51458.2022.00181 "https://doi.org/10.1109/WACV51458.2022.00181"))

### B4. `hatamizadeh2022swinunetr`

- Citation Key: `hatamizadeh2022swinunetr`
- Priority: CORE
- Title: Swin UNETR: Swin Transformers for Semantic Segmentation of Brain Tumors in MRI Images
- Authors: Ali Hatamizadeh; Vishwesh Nath; Yucheng Tang; Dong Yang; Holger R. Roth; Daguang Xu
- Year: 2022
- Venue: BrainLes / MICCAI workshop proceedings, LNCS
- Publication Type: Conference
- DOI: 10.1007/978-3-031-08999-2\_22
- Verified URL: [Springer DOI record](https://doi.org/10.1007/978-3-031-08999-2_22)
- Publication Status: Published
- Supported Claims: 支持以 shifted-window attention 构建层次化三维编码器，并在多分辨率层级与 U 形解码结构结合。
- Used In Planned Sections: 1.2.2；1.3；2.3.1；2.4
- Evidence Boundary: 其注意力并非所有 token 的全局全连接注意力，因此不能把它与标准全局 self-attention 的复杂度简单等同。([Colab](https://colab.ws/articles/10.1007%2F978-3-031-08999-2_22 "https://colab.ws/articles/10.1007%2F978-3-031-08999-2_22"))

### B5. `xie2021cotr`

- Citation Key: `xie2021cotr`
- Priority: SUPPORTING
- Title: CoTr: Efficiently Bridging CNN and Transformer for 3D Medical Image Segmentation
- Authors: Yutong Xie; Jianpeng Zhang; Chunhua Shen; Yong Xia
- Year: 2021
- Venue: MICCAI 2021
- Publication Type: Conference
- DOI: 10.1007/978-3-030-87199-4\_16
- Verified URL: [Springer DOI record](https://doi.org/10.1007/978-3-030-87199-4_16)
- Publication Status: Published
- Supported Claims: 支持在三维分割中利用 CNN 提取局部特征并以 deformable Transformer 建立远距离关系，同时讨论直接处理高分辨率三维特征带来的计算问题。
- Used In Planned Sections: 1.2.2；1.3；3.1
- Evidence Boundary: 其 deformable attention 机制与 Work1 的 Vision-xLSTM 不等价，仅作为问题与路线背景。([MICCAI 2021](https://miccai2021.org/openaccess/paperlinks/2021/09/01/118-Paper0537.html "https://miccai2021.org/openaccess/paperlinks/2021/09/01/118-Paper0537.html"))

### B6. `zhou2023nnformer`

- Citation Key: `zhou2023nnformer`
- Priority: CORE
- Title: nnFormer: Volumetric Medical Image Segmentation via a 3D Transformer
- Authors: Hong-Yu Zhou; Jiansen Guo; Yinghao Zhang; Xiaoguang Han; Lequan Yu; Liansheng Wang; Yizhou Yu
- Year: 2023
- Venue: IEEE Transactions on Image Processing, 32, 4036–4045
- Publication Type: Journal
- DOI: 10.1109/TIP.2023.3293771
- Verified URL: [IEEE DOI record](https://doi.org/10.1109/TIP.2023.3293771)
- Publication Status: Published
- Supported Claims: 支持在体数据分割中通过 Transformer 进行跨区域关系建模，并结合局部与全局信息处理三维结构。
- Used In Planned Sections: 1.2.2；1.3；2.3.1
- Evidence Boundary: 正式期刊标题与早期 arXiv 标题略有变化，最终 BibTeX 应使用正式 IEEE 版本。([PubMed](https://pubmed.ncbi.nlm.nih.gov/37440404/ "https://pubmed.ncbi.nlm.nih.gov/37440404/"))

### B7. `shaker2024unetrpp`

- Citation Key: `shaker2024unetrpp`
- Priority: CORE
- Title: UNETR++: Delving into Efficient and Accurate 3D Medical Image Segmentation
- Authors: Abdelrahman Shaker; Muhammad Maaz; Hanoona Rasheed; Salman Khan; Ming-Hsuan Yang; Fahad Shahbaz Khan
- Year: 2024
- Venue: IEEE Transactions on Medical Imaging, 43(9), 3377–3390
- Publication Type: Journal
- DOI: 10.1109/TMI.2024.3398728
- Verified URL: [IEEE DOI record](https://doi.org/10.1109/TMI.2024.3398728)
- Publication Status: Published
- Supported Claims: 支持标准 self-attention 在高维三维输入上的计算开销问题，以及通过更高效的空间/通道注意力设计降低这种负担的研究路线。
- Used In Planned Sections: 1.2.2；1.3；2.3.1；3.1
- Evidence Boundary: 不使用其结果证明 Vision-xLSTM 更优，只用于说明三维 Transformer 社区本身也在处理效率问题。([PubMed](https://pubmed.ncbi.nlm.nih.gov/38722726/ "https://pubmed.ncbi.nlm.nih.gov/38722726/"))

## C xLSTM / Vision-LSTM / Efficient Long-range Modeling

### C1. `beck2024xlstm`

- Citation Key: `beck2024xlstm`
- Priority: FOUNDATIONAL
- Title: xLSTM: Extended Long Short-Term Memory
- Authors: Maximilian Beck; Korbinian Pöppel; Markus Spanring; Andreas Auer; Oleksandra Prudnikova; Michael Kopp; Günter Klambauer; Johannes Brandstetter; Sepp Hochreiter
- Year: 2024
- Venue: NeurIPS 2024
- Publication Type: Conference
- DOI: 10.52202/079017-3417
- Verified URL: [NeurIPS proceedings](https://papers.nips.cc/paper_files/paper/2024/hash/c2ce2f2701c10a2b2f2ea0bfa43cfaa3-Abstract-Conference.html)
- Publication Status: Published
- Supported Claims: 支持 xLSTM 引入 exponential gating，并形成 sLSTM 与 mLSTM 两类扩展；其中 mLSTM 使用矩阵记忆且可并行计算。
- Used In Planned Sections: 1.2.3；2.3.2；3.1；3.4
- Evidence Boundary: 不得把这篇论文直接转化为“Work1 实现严格为 O(N)”的证据。 xLSTM 的架构性质与具体 Vision-xLSTM 实现复杂度必须分别处理。([NIPS论文集](https://papers.nips.cc/paper_files/paper/2024/hash/c2ce2f2701c10a2b2f2ea0bfa43cfaa3-Abstract-Conference.html "https://papers.nips.cc/paper_files/paper/2024/hash/c2ce2f2701c10a2b2f2ea0bfa43cfaa3-Abstract-Conference.html"))

### C2. `alkin2025visionlstm`

- Citation Key: `alkin2025visionlstm`
- Priority: CORE
- Title: Vision-LSTM: xLSTM as Generic Vision Backbone
- Authors: Benedikt Alkin; Maximilian Beck; Korbinian Pöppel; Sepp Hochreiter; Johannes Brandstetter
- Year: 2025
- Venue: ICLR 2025
- Publication Type: Conference
- DOI: NONE VERIFIED
- Verified URL: ICLR/OpenReview formal conference record
- Publication Status: Published at ICLR 2025
- Supported Claims: 支持将 xLSTM block 适配到视觉 patch 序列，并通过方向交替的序列处理形成视觉骨干；支持 ViL 可迁移至视觉识别和密集视觉任务的描述。
- Used In Planned Sections: 1.2.3；2.3.2；3.1；3.4；3.4.1；3.4.2
- Evidence Boundary: 应优先引用 ICLR 2025 正式版本，而不是仅引用更早 workshop/arXiv 版本。([ICLR 会议记录](https://proceedings.iclr.cc/paper_files/paper/2025/hash/3b6eaef68473fe46bc4197a6b4460042-Abstract-Conference.html "https://proceedings.iclr.cc/paper_files/paper/2025/hash/3b6eaef68473fe46bc4197a6b4460042-Abstract-Conference.html"))

### C3. `dutta2025visionxlstmunet`

- Citation Key: `dutta2025visionxlstmunet`
- Priority: CORE
- Title: Are Vision-xLSTM-embedded U-Nets better at segmenting medical images?
- Authors: Pallabi Dutta; Soham Bose; Swalpa Kumar Roy; Sushmita Mitra
- Year: 2025
- Venue: Neural Networks, 192, 107925
- Publication Type: Journal
- DOI: 10.1016/j.neunet.2025.107925
- Verified URL: [Neural Networks / ScienceDirect](https://doi.org/10.1016/j.neunet.2025.107925)
- Publication Status: Published
- Supported Claims: 支持 CNN 负责局部空间/纹理特征、ViL 在 U 形网络中用于长距离关系建模这一医学分割路线；论文覆盖二维与三维医学分割。
- Used In Planned Sections: 1.2.3；2.3.2；3.1
- Evidence Boundary: 不采用其“first integration”等优先权措辞，因为更早的 xLSTM-UNet 技术报告/会议版本造成时间线复杂性；此文只支持技术路线事实。([科学直通车](https://www.sciencedirect.com/science/article/abs/pii/S0893608025008068 "https://www.sciencedirect.com/science/article/abs/pii/S0893608025008068"))

### C4. `liu2024swinumamba`

- Citation Key: `liu2024swinumamba`
- Priority: SUPPORTING
- Title: Swin-UMamba: Mamba-based UNet with ImageNet-based pretraining
- Authors: Jiarun Liu; Hao Yang; Hong-Yu Zhou; Yan Xi; Lequan Yu; Cheng Li; Yong Liang; Guangming Shi; Yizhou Yu; Shaoting Zhang; Hairong Zheng; Shanshan Wang
- Year: 2024
- Venue: MICCAI 2024, LNCS 15009
- Publication Type: Conference
- DOI: 10.1007/978-3-031-72114-4\_59
- Verified URL: MICCAI official open-access page / Springer DOI
- Publication Status: Published
- Supported Claims: 支持状态空间类模型被引入医学分割以处理多尺度、局部到全局依赖关系的研究方向。
- Used In Planned Sections: 1.2.3；1.3
- Evidence Boundary: 只作为旁证，不让 Mamba 路线取代本论文以 Vision-xLSTM 为中心的叙事。([MICCAI 2025 - Open Access](https://papers.miccai.org/miccai-2024/749-Paper1627.html "https://papers.miccai.org/miccai-2024/749-Paper1627.html"))

### C5. `wu2026vilunet`

- Citation Key: `wu2026vilunet`
- Priority: CORE
- Title: ViL-UNet: Beyond Transformers for 3D Medical Image Segmentation with Vision-xLSTM
- Authors: Yong Wu; Wenjun Huang; Ziyu Hu; Yiqi Ma; Pi Fang; Yuechen Yin; Qinghua Zhong
- Year: 2026
- Venue: International Joint Conference on Neural Networks (IJCNN), within IEEE WCCI 2026
- Publication Type: Conference
- DOI: DOI_NOT_YET_AVAILABLE
- Verified URL: [WCCI 2026 official Proceedings index](https://wcci.klinkhamergroup.com/papers/file_index.html); Secondary: [WCCI 2026 official programme](https://wcci.klinkhamergroup.com/papers/at_a_glance.html)
- Publication Status: PUBLICATION_PENDING; IJCNN / WCCI 2026 conference paper identity and participation evidence allowed; final IEEE Xplore metadata not yet available.
- Supported Claims: 当前稿件直接支持“3D CNN encoder + ViL bottleneck + ViL-related skip enhancement + U-shaped decoder”的论文描述，并支持 CNN 局部特征与 Vision-xLSTM 长距离上下文协同的作者方法定位。稿件首页作者信息已核验。
- Used In Planned Sections: 1.4.1；3.1；3.2；3.3；3.4；3.5；3.6
- Evidence Boundary: Use for Work1 method identity and paper-reported method claims only. Do not invent DOI, IEEE Xplore article number, page range, volume, or issue. Do not use xLSTM/Vision-LSTM theory papers to prove the concrete Work1 implementation is strictly O(N).

## D Multi-scale / Structural / Boundary / Small-organ Evidence

### D1. `zhou2018unetpp`

- Citation Key: `zhou2018unetpp`
- Priority: CORE
- Title: UNet++: A Nested U-Net Architecture for Medical Image Segmentation
- Authors: Zongwei Zhou; Md Mahfuzur Rahman Siddiquee; Nima Tajbakhsh; Jianming Liang
- Year: 2018
- Venue: DLMIA / ML-CDS, MICCAI 2018
- Publication Type: Conference
- DOI: 10.1007/978-3-030-00889-5\_1
- Verified URL: [Springer DOI record](https://doi.org/10.1007/978-3-030-00889-5_1)
- Publication Status: Published
- Supported Claims: 支持通过嵌套、密集跳跃路径逐步缩小编码器与解码器特征间语义差异的设计。
- Used In Planned Sections: 1.2.1；1.2.4；2.2.2；2.4
- Evidence Boundary: 它证明的是一种多尺度/skip 改造路线存在，不证明“尺度特异结构证据”已经被解决。([DOI](https://doi.org/10.1007%2F978-3-030-00889-5_1 "https://doi.org/10.1007%2F978-3-030-00889-5_1"))

### D2. `ibtehaz2020multiresunet`

- Citation Key: `ibtehaz2020multiresunet`
- Priority: SUPPORTING
- Title: MultiResUNet: Rethinking the U-Net architecture for multimodal biomedical image segmentation
- Authors: Nabil Ibtehaz; M. Sohel Rahman
- Year: 2020
- Venue: Neural Networks, 121, 74–87
- Publication Type: Journal
- DOI: 10.1016/j.neunet.2019.08.025
- Verified URL: [Neural Networks](https://doi.org/10.1016/j.neunet.2019.08.025)
- Publication Status: Published
- Supported Claims: 支持医学图像目标尺度变化促使网络采用多分辨率特征提取与增强 skip path 的设计方向。
- Used In Planned Sections: 1.2.4；2.4
- Evidence Boundary: 不由该论文推出下采样必然造成某一具体器官性能下降。([科学直通车](https://www.sciencedirect.com/science/article/abs/pii/S0893608019302503 "https://www.sciencedirect.com/science/article/abs/pii/S0893608019302503"))

### D3. `huang2020unet3plus`

- Citation Key: `huang2020unet3plus`
- Priority: CORE
- Title: UNet 3+: A Full-Scale Connected UNet for Medical Image Segmentation
- Authors: Huimin Huang; Lanfen Lin; Ruofeng Tong; Hongjie Hu; Qiaowei Zhang; Yutaro Iwamoto; Xianhua Han; Yen-Wei Chen; Jian Wu
- Year: 2020
- Venue: ICASSP 2020
- Publication Type: Conference
- DOI: 10.1109/ICASSP40776.2020.9053405
- Verified URL: [IEEE Xplore DOI record](https://doi.org/10.1109/ICASSP40776.2020.9053405)
- Publication Status: Published
- Supported Claims: 支持利用全尺度跳跃连接融合较低层细节和较高层语义特征；论文明确将不同尺度目标作为这种设计的动机之一。
- Used In Planned Sections: 1.2.4；2.4；4.1
- Evidence Boundary: 可以作为“已有工作重视跨尺度融合”的证据；不能写成它已经进行了“尺度特异结构证据调制”。([DOI](https://doi.org/10.1109%2Ficassp40776.2020.9053405 "https://doi.org/10.1109%2Ficassp40776.2020.9053405"))

### D4. `kervadec2021boundary`

- Citation Key: `kervadec2021boundary`
- Priority: CORE
- Title: Boundary loss for highly unbalanced segmentation
- Authors: Hoel Kervadec; Jihene Bouchtiba; Christian Desrosiers; Eric Granger; Jose Dolz; Ismail Ben Ayed
- Year: 2021
- Venue: Medical Image Analysis, 67, 101851
- Publication Type: Journal
- DOI: 10.1016/j.media.2020.101851
- Verified URL: [Medical Image Analysis](https://doi.org/10.1016/j.media.2020.101851)
- Publication Status: Published journal version
- Supported Claims: 支持区域损失在高度类别不平衡条件下面临困难，以及利用预测边界与真实边界之间的距离构建边界型优化目标的研究路线。
- Used In Planned Sections: 1.1；1.2.4；2.4；4.1
- Evidence Boundary: Work2 当前不是“Boundary Loss 方法”，因此只用于结构/边界问题背景。([科学直通车](https://www.sciencedirect.com/science/article/abs/pii/S1361841520302152 "https://www.sciencedirect.com/science/article/abs/pii/S1361841520302152"))

### D5. `zhu2019anatomynet`

- Citation Key: `zhu2019anatomynet`
- Priority: SUPPORTING
- Title: AnatomyNet: Deep learning for fast and fully automated whole-volume segmentation of head and neck anatomy
- Authors: Wentao Zhu; Yufang Huang; Liang Zeng; Xuming Chen; Yong Liu; Zhen Qian; Nan Du; Wei Fan; Xiaohui Xie
- Year: 2019
- Venue: Medical Physics, 46(2), 576–589
- Publication Type: Journal
- DOI: 10.1002/mp.13300
- Verified URL: [Wiley DOI record](https://doi.org/10.1002/mp.13300)
- Publication Status: Published
- Supported Claims: 论文明确讨论某些小解剖结构仅出现在少量 CT slices 中，以及类别/体积不平衡给自动分割带来的困难。
- Used In Planned Sections: 1.1；1.2.4；2.4；4.1
- Evidence Boundary: 证据来自头颈 OAR，不应直接替换成“Gallbladder/Pancreas 必然如此”。([PubMed](https://pubmed.ncbi.nlm.nih.gov/30480818/ "https://pubmed.ncbi.nlm.nih.gov/30480818/"))

### D6. `gao2019focusnet`

- Citation Key: `gao2019focusnet`
- Priority: CORE
- Title: FocusNet: Imbalanced Large and Small Organ Segmentation with an End-to-End Deep Neural Network for Head and Neck CT Images
- Authors: Yunhe Gao; Rui Huang; Ming Chen; Zhe Wang; Jincheng Deng; Yuanyuan Chen; Yiwei Yang; Jie Zhang; Chanjuan Tao; Hongsheng Li
- Year: 2019
- Venue: MICCAI 2019
- Publication Type: Conference
- DOI: 10.1007/978-3-030-32248-9\_92
- Verified URL: [Springer DOI record](https://doi.org/10.1007/978-3-030-32248-9_92)
- Publication Status: Published
- Supported Claims: 支持医学多器官分割中不同器官大小可相差很大，小器官因像素/体素占比低而更难学习；其方法采用针对小器官的定位及高分辨率/multi-scale ROI 特征。
- Used In Planned Sections: 1.1；1.2.4；2.4；4.1
- Evidence Boundary: 同样属于头颈 CT；它支持“器官尺度不平衡”这一一般背景，不支持对 Synapse 某两个具体器官给出未经核验的统一难度排序。([ResearchGate](https://www.researchgate.net/publication/336380278_FocusNet_Imbalanced_Large_and_Small_Organ_Segmentation_with_an_End-to-End_Deep_Neural_Network_for_Head_and_Neck_CT_Images "https://www.researchgate.net/publication/336380278_FocusNet_Imbalanced_Large_and_Small_Organ_Segmentation_with_an_End-to-End_Deep_Neural_Network_for_Head_and_Neck_CT_Images"))

## E Dataset Sources

### E1. `landman2015btcv`

- Citation Key: `landman2015btcv`
- Priority: CORE
- Title: 2015 MICCAI Multi-Atlas Labeling Beyond the Cranial Vault – Workshop and Challenge
- Authors: Bennett Landman; Zhoubing Xu; Juan Eugenio Iglesias; Martin Styner; Thomas Robin Langerak; Arno Klein
- Year: 2015
- Venue: MICCAI Multi-Atlas Labeling Beyond the Cranial Vault Workshop and Challenge / Synapse
- Publication Type: Challenge / Dataset
- DOI: 10.7303/syn3193805
- Verified URL: Official Vanderbilt MASI challenge page / Synapse DOI; Secondary: Official Synapse challenge
- Publication Status: Official challenge/dataset record
- Supported Claims: 支持该数据来源于 MICCAI 2015 Multi-Atlas Labeling Beyond the Cranial Vault challenge，并提供官方 Synapse 数据入口。
- Used In Planned Sections: 1.1；2.1；3.6.1；4.7.1
- Evidence Boundary: 最终正文必须把“官方 BTCV 数据集来源”与具体论文采用的 Synapse split、器官子集及预处理协议分开引用。 当前来源不能自动证明 Work1 使用了某一固定训练/测试数量。([Vanderbilt University](https://my.vanderbilt.edu/masi/workshops/ "https://my.vanderbilt.edu/masi/workshops/"))

### E2. `bernard2018acdc`

- Citation Key: `bernard2018acdc`
- Priority: CORE
- Title: Deep Learning Techniques for Automatic MRI Cardiac Multi-Structures Segmentation and Diagnosis: Is the Problem Solved?
- Authors: Olivier Bernard et al.（ACDC challenge consortium；完整作者列表已由 PubMed 正式记录核验）
- Year: 2018
- Venue: IEEE Transactions on Medical Imaging, 37(11), 2514–2525
- Publication Type: Journal / Challenge analysis
- DOI: 10.1109/TMI.2018.2837502
- Verified URL: [IEEE DOI record](https://doi.org/10.1109/TMI.2018.2837502); Secondary: PubMed
- Publication Status: Published
- Supported Claims: 支持 ACDC 心脏 MRI benchmark、相应心脏结构分割与自动评测研究背景。
- Used In Planned Sections: 2.1；3.6.1
- Evidence Boundary: 论文最终实验设置仍以 Work1 自己的 protocol 为准；ACDC 原始文献不能替代 Work1 的训练划分说明。([PubMed](https://pubmed.ncbi.nlm.nih.gov/29994302/ "https://pubmed.ncbi.nlm.nih.gov/29994302/"))

## F Evaluation Metrics

### F1. `dice1945measures`

- Citation Key: `dice1945measures`
- Priority: FOUNDATIONAL
- Title: Measures of the Amount of Ecologic Association Between Species
- Authors: Lee R. Dice
- Year: 1945
- Venue: Ecology, 26(3), 297–302
- Publication Type: Journal
- DOI: 10.2307/1932409
- Verified URL: [Wiley/JSTOR DOI record](https://doi.org/10.2307/1932409)
- Publication Status: Published
- Supported Claims: 支持 Dice 相似性度量的历史定义。
- Used In Planned Sections: 2.5；2.5.2
- Evidence Boundary: 医学分割中的实现与解释应和 Taha & Hanbury 等领域评价文献共同使用，而非只引用 1945 年生态学原文。([The Ecological Society of America](https://esajournals.onlinelibrary.wiley.com/doi/10.2307/1932409 "https://esajournals.onlinelibrary.wiley.com/doi/10.2307/1932409"))

### F2. `taha2015metrics`

- Citation Key: `taha2015metrics`
- Priority: CORE
- Title: Metrics for evaluating 3D medical image segmentation: analysis, selection, and tool
- Authors: A. A. Taha; Allan Hanbury
- Year: 2015
- Venue: BMC Medical Imaging, 15, 29
- Publication Type: Journal
- DOI: 10.1186/s12880-015-0068-x
- Verified URL: [BMC Medical Imaging](https://doi.org/10.1186/s12880-015-0068-x)
- Publication Status: Published
- Supported Claims: Supports Dice-type overlap metrics, Hausdorff-type spatial distance metrics, Hausdorff sensitivity to outliers, and quantile Hausdorff as a way to reduce extreme-distance influence. Thesis HD95 theory policy: HD95(A,B) = max{P95(d(A,B)), P95(d(B,A))}, where P95 is the 95th percentile of shortest surface-distance sets.
- Used In Planned Sections: 2.5；2.5.2
- Evidence Boundary: METRIC_THEORY_SOURCE = taha2015metrics. Final Work1/Work2 implementation remains PENDING_FINAL_IMPLEMENTATION and must be tied later to MONAI, MedPy, or the actual frozen evaluation code if used.

## G Reviews

### G1. `litjens2017survey`

- Citation Key: `litjens2017survey`
- Priority: CORE
- Title: A survey on deep learning in medical image analysis
- Authors: Geert Litjens; Thijs Kooi; Babak Ehteshami Bejnordi; Arnaud Arindra Adiyoso Setio; Francesco Ciompi; Mohsen Ghafoorian; Jeroen A. W. M. van der Laak; Bram van Ginneken; Clara I. Sánchez
- Year: 2017
- Venue: Medical Image Analysis, 42, 60–88
- Publication Type: Review
- DOI: 10.1016/j.media.2017.07.005
- Verified URL: [Medical Image Analysis](https://doi.org/10.1016/j.media.2017.07.005)
- Publication Status: Published
- Supported Claims: 支持深度学习在医学图像分析中的主要任务类别、CNN 应用发展及分割研究的大背景。
- Used In Planned Sections: 1.1；1.2；1.3
- Evidence Boundary: 具体网络仍引用原始论文。([DOI](https://doi.org/10.1016/j.media.2017.07.005 "https://doi.org/10.1016/j.media.2017.07.005"))

### G2. `hesamian2019segmentationreview`

- Citation Key: `hesamian2019segmentationreview`
- Priority: CORE
- Title: Deep Learning Techniques for Medical Image Segmentation: Achievements and Challenges
- Authors: Mohammad Hesam Hesamian; Wenjing Jia; Xiangjian He; Paul Kennedy
- Year: 2019
- Venue: Journal of Digital Imaging, 32, 582–596
- Publication Type: Review
- DOI: 10.1007/s10278-019-00227-x
- Verified URL: [SpringerLink](https://doi.org/10.1007/s10278-019-00227-x)
- Publication Status: Published
- Supported Claims: 支持深度学习医学图像分割主要技术路线、实际挑战和 CNN 时代研究背景的宏观总结。
- Used In Planned Sections: 1.1；1.2.1；1.3
- Evidence Boundary: 不用综述替代 U-Net、V-Net 等原始论文。([Springer](https://link.springer.com/article/10.1007/s10278-019-00227-x "https://link.springer.com/article/10.1007/s10278-019-00227-x"))

### G3. `shamshad2023transformersurvey`

- Citation Key: `shamshad2023transformersurvey`
- Priority: SUPPORTING
- Title: Transformers in medical imaging: A survey
- Authors: Fahad Shamshad; Salman Khan; Syed Waqas Zamir; Muhammad Haris Khan; Munawar Hayat; Fahad Shahbaz Khan; Huazhu Fu
- Year: 2023
- Venue: Medical Image Analysis, 88, 102802
- Publication Type: Review
- DOI: 10.1016/j.media.2023.102802
- Verified URL: [Medical Image Analysis](https://doi.org/10.1016/j.media.2023.102802)
- Publication Status: Published
- Supported Claims: 支持 Transformer 在医学影像中的主要应用类别、技术演进及其相较卷积局部建模的全局关系建模动机。
- Used In Planned Sections: 1.2.2；1.3；2.3.1
- Evidence Boundary: 介绍 TransUNet、UNETR 等具体模型时仍引用其原始论文。([科学直通车](https://www.sciencedirect.com/science/article/pii/S1361841523000634 "https://www.sciencedirect.com/science/article/pii/S1361841523000634"))

## Candidate Expansion Pool

These references are candidates only. They are not part of the 31-entry core pool and should be promoted only after metadata and claim boundaries are rechecked for the section that needs them.

| Title | Year | Why Candidate | Potential Section |
|---|---:|---|---|
| xLSTM-UNet can be an Effective 2D & 3D Medical Image Segmentation Backbone with Vision-LSTM (ViL) better than its Mamba Counterpart | 2024 | Very close to Work1; arXiv record is checked, but formal IEEE BHI metadata is not unified enough for core status. | 1.2.3; 2.3.2; 3.1 |
| SegMamba: Long-Range Sequential Modeling Mamba for 3D Medical Image Segmentation | 2024 | Formal MICCAI 2024; useful if the thesis needs more SSM background without displacing the Vision-xLSTM line. | 1.2.3 |
| TransBTS: Multimodal Brain Tumor Segmentation Using Transformer | 2021 | Early 3D CNN + Transformer representative; DOI 10.1007/978-3-030-87193-2_11. | 1.2.2; 3.1 |
| UNesT: Local Spatial Representation Learning with Hierarchical Transformer for Efficient Medical Segmentation | 2023 | Formal Medical Image Analysis paper; useful for hierarchical spatial representation and structures of different sizes. | 1.2.2; 1.2.4; 2.4 |
| H-DenseUNet: Hybrid Densely Connected UNet for Liver and Tumor Segmentation From CT Volumes | 2018 | Can supplement intra-slice and volumetric-context fusion plus 3D computation-cost background. | 1.2.1; 2.1 |
| FocusNetv2: Imbalanced large and small organ segmentation with adversarial shape constraint for head and neck CT images | 2021 | Formal extension of FocusNet with shape constraint; useful later for structural-information discussion. | 1.2.4; 4.1 |
| clDice - A Novel Topology-Preserving Loss Function for Tubular Structure Segmentation | 2021 | Candidate only if topology-aware structure evidence becomes necessary; current Work2 is not a topology-preserving model. | 1.2.4; 2.4 |
| Attention U-Net: Learning Where to Look for the Pancreas | 2018 | Relevant to abdominal organs and attention gates, but currently checked mainly as a preprint. | 1.2.1; 1.2.4 |
| Comparing Images Using the Hausdorff Distance | 1993 | Classic Hausdorff-distance source; optional if Chapter 2 traces HD theory beyond Taha and Hanbury. | 2.5.2 |
| A multiple gated boosting network for multi-organ medical image segmentation | 2023 | Can support benchmark-bounded difficult-organ observations, not a universal law. | 1.2.4; 4.1 |

## Coverage Matrix

| Planned Section | Required Topic | Core References | Coverage Status |
|---|---|---|---|
| 1.1 | 3D segmentation background; local detail, context, scale/small-structure issues | `litjens2017survey`, `hesamian2019segmentationreview`, `cicek2016threeDunet`, `gao2019focusnet`, `kervadec2021boundary` | SUFFICIENT |
| 1.2.1 | CNN, U-Net, 3D CNN, modern strong CNN baseline | `long2015fcn`, `ronneberger2015unet`, `cicek2016threeDunet`, `milletari2016vnet`, `isensee2021nnunet`, `kamnitsas2017deepmedic` | SUFFICIENT |
| 1.2.2 | Transformer, CNN-Transformer, 3D Transformer, efficiency tension | `vaswani2017attention`, `chen2024transunet`, `hatamizadeh2022unetr`, `hatamizadeh2022swinunetr`, `xie2021cotr`, `zhou2023nnformer`, `shaker2024unetrpp` | SUFFICIENT |
| 1.2.3 | xLSTM, Vision-LSTM, efficient long-range modeling, limited SSM background | `beck2024xlstm`, `alkin2025visionlstm`, `dutta2025visionxlstmunet`, `liu2024swinumamba`, `wu2026vilunet` | SUFFICIENT |
| 1.2.4 | Multi-scale, cross-layer fusion, boundary, small-organ/scale imbalance | `zhou2018unetpp`, `ibtehaz2020multiresunet`, `huang2020unet3plus`, `kervadec2021boundary`, `zhu2019anatomynet`, `gao2019focusnet` | SUFFICIENT |
| 1.3 | Converges to local-global and scale-structure research gaps | A+B+C+D key papers together | SUFFICIENT |
| 2.1 | Volumetric data, 3D segmentation task, 3D CNN | `cicek2016threeDunet`, `milletari2016vnet`, `kamnitsas2017deepmedic`, dataset references | SUFFICIENT |
| 2.2 | Convolution, U-shaped encoder-decoder, skip connections | `ronneberger2015unet`, `cicek2016threeDunet`, `milletari2016vnet`, `zhou2018unetpp` | SUFFICIENT |
| 2.3.1 | Transformer and self-attention; 3D computational properties | `vaswani2017attention`, `hatamizadeh2022unetr`, `xie2021cotr`, `shaker2024unetrpp` | SUFFICIENT |
| 2.3.2 | xLSTM and Vision-xLSTM | `beck2024xlstm`, `alkin2025visionlstm`, `dutta2025visionxlstmunet`, `wu2026vilunet` | SUFFICIENT |
| 2.4 | Multi-scale features, shallow detail/deep semantics, scale-structure issues | `zhou2018unetpp`, `huang2020unet3plus`, `gao2019focusnet`, `kervadec2021boundary` | SUFFICIENT |
| 2.5 | Dice, HD95 theory; final loss and efficiency definitions | `dice1945measures`, `taha2015metrics` | PARTIAL - theory citation RESOLVED for Dice/HD/quantile HD and HD95 policy; final HD95 implementation, final loss protocol, FLOPs/VRAM/inference-time protocol remain PENDING_FINAL_IMPLEMENTATION. |
| 3.1 | Work1 CNN local + ViL long-range motivation | `wu2026vilunet`, `ronneberger2015unet`, `vaswani2017attention`, `beck2024xlstm`, `alkin2025visionlstm` | SUFFICIENT |
| 3.2-3.5 | Work1 architecture, local encoding, ViL, multi-directional modeling, decoding | `wu2026vilunet`, `beck2024xlstm`, `alkin2025visionlstm` | SUFFICIENT - Work1 manuscript is the method fact source; recovered code must not silently overwrite paper description. |
| 4.1 | Why scale-structure issues remain after Work1 | `huang2020unet3plus`, `gao2019focusnet`, `kervadec2021boundary`, `zhu2019anatomynet`, `zhou2018unetpp` | SUFFICIENT |
| 4.2 | R2 Full-History / No-History pre-study analysis | External D references for background only; R2 numbers governed by `FACTS_AND_NUMBERS.md` EXPERIMENTALLY_VERIFIED evidence | SUFFICIENT - no external paper is needed to prove No-History superiority. |

## P-003B-R1 Resolution Notes

- Work1 ACDC LV is resolved to 96.56% from `D:/Graduate/vil-unet-work2-bootstrap/source_materials/work1_paper.pdf`, Table II on PDF page 5, with a confirming analysis sentence on page 6.
- Work1 publication status is `PUBLICATION_PENDING`; DOI is `DOI_NOT_YET_AVAILABLE`.
- HD95 theory source is `taha2015metrics`; final implementation source remains pending until the evaluation implementation is frozen.
