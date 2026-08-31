
# Chapter 4 Authoring Guardrails

## Status

`CH04_AUTHORING_GUARDRAILS = ACTIVE / HARD_GATE`

Scope:

Chapter 4 — 基于尺度特异结构证据调制的三维医学图像分割方法

These rules are Chapter 4-specific hard gates. They supplement, and do not replace:

- `docs/WRITING_STYLE_GUIDE.md`
- `docs/ACADEMIC_WRITING_PLAYBOOK.md`
- `docs/ACADEMIC_QUALITY_GATE.md`
- `docs/FACTS_AND_NUMBERS.md`
- `docs/PLACEHOLDER_LEDGER.md`
- `docs/CITATION_AND_SOURCE_RISK_LOG.md`

If this file conflicts with an authoritative evidence/fact document, stop authoring and report to GPT A.

---

## 1. CH04_FORMAL_BODY_FIREWALL

`CH04_FORMAL_BODY_FIREWALL = HARD_GATE`

All rendered-visible Chapter 4 prose, headings, captions, tables, footnotes, and other PDF-visible content must satisfy:

- visible `Work1 = 0`
- visible `Work2 = 0`
- visible `R2 = 0`
- visible `recovered code = 0`
- visible governance/source-audit narration = 0

Internal labels may appear only in governance records, Source Packets, Author Notes, or non-rendered author comments.

Formal thesis narration should use the thesis itself, the chapter, or formal method names as the academic narrator.

---

## 2. SOURCE_GAP_POLICY

`SOURCE_GAP_POLICY = SOURCE GAP -> OMIT IN BODY`

When a fact, implementation detail, protocol, formula, connection, or result lacks sufficient verified support:

- omit it from rendered formal body;
- record necessary details in Source Packet or Author Notes;
- if an author reminder must remain in LaTeX, use only a non-rendered form such as:

`%（作者核验备注：……）`

Do not expose source-audit reasoning to thesis readers.

Forbidden rendered disclaimer patterns include, but are not limited to:

- 原论文没有给出……
- 当前资料没有确认……
- 当前证据允许……
- 为保持证据边界……
- 因尚未获得最终实验……
- 根据治理文件……
- 根据恢复代码……
- 本节不……
- 后续将……
- 为避免……

A single academically necessary navigation sentence is not automatically prohibited; repeated meta-writing or defensive source-audit narration is prohibited.

---

## 3. CH04_PRESTUDY_GUARDRAIL

`CH04_PRESTUDY_GUARDRAIL = CONTROLLED_USE_ONLY`

Pre-study evidence may be used only when explicitly authorized by the relevant Section Task Card.

When authorized, it may be translated into normal academic forms such as:

- 前置分析
- 前置对比实验
- 初步对比
- 探索性实验

The internal label `R2` must never appear in rendered formal body.

Pre-study evidence may support a design motivation or research direction.

It must not be treated as:

- final Chapter 4 efficacy evidence;
- proof that the final method is effective;
- proof that SSE, IM, or SDE is effective;
- proof that the final architecture is already validated.

`PRE-STUDY EVIDENCE != FINAL EFFICACY EVIDENCE`

---

## 4. CH04_PLACEHOLDER_GUARDRAIL

`CH04_PLACEHOLDER_GUARDRAIL = ZERO-TOLERANCE`

`THESIS_PLACEHOLDER` values are not experimental facts.

They may be used only for governed internal planning or layout purposes permitted by `docs/PLACEHOLDER_LEDGER.md`.

A placeholder must never generate a rendered formal result claim.

### 4.1 S4-07 expected-result drafting override

`S4-07_AUTHORING_MODE = USER_AUTHORIZED_EXPECTED_RESULT_DRAFT`

`S4-07_PLACEHOLDER_RENDERING_OVERRIDE = ACTIVE / S4-07_ONLY`

`PLACEHOLDER_EVIDENCE_IDENTITY = UNCHANGED / THESIS_PLACEHOLDER`

This narrow user authorization applies only to Section 4.7 `实验与结果分析`
and subsections 4.7.1--4.7.7. It authorizes expected-result drafting, not
evidence promotion, final-evidence verification, or any status beyond the
authorization recorded in the Chapter 4 governance files.
For this scope only, it is the controlled exception to the general rendered
placeholder-claim prohibition below; the caption and traceability rules in this
subsection are mandatory conditions of that exception.

Within this narrow scope, expected numerical tables may render only when the
Chinese table caption ends with `（预期）`. Each such table must retain nearby
non-rendered `% PLACEHOLDER_RESULT: <ledger-ID>` comments for future replacement.
These comments do not change any placeholder status or evidence identity.

Expected-result prose may analyze a caption-marked table using explicit,
arithmetically correct comparison language. It must not call a number
experimentally verified, use unsupported statistical language, derive runtime
or memory conclusions from Params/FLOPs, or generalize qualitative examples to
the full dataset. Rendered prose must remain ordinary thesis prose and must not
contain governance, provenance, source-audit, or defensive disclaimer language.

Until a value is promoted by authoritative verified evidence, do not write claims such as:

- 取得……
- 提升……
- 优于……
- 降低……
- 改善……
- 达到……
- 表明本文方法有效……
- 证明某模块有效……

`LEGACY_PLACEHOLDER` values must not be reused as current evidence.

---

## 5. CH04_RESULT_INTERPRETATION_GUARDRAIL

`CH04_RESULT_INTERPRETATION_GUARDRAIL = HARD_GATE`

### 5.1 Ranking scope

A table-internal ranking is not a universal advantage.

Report the actual comparison scope.

### 5.2 Comparison reference

Words such as “提升”“降低”“改善” require an explicit and valid comparison reference.

Do not use improvement language without identifying what is being compared.

### 5.3 Overall result vs module mechanism

Overall method results do not independently prove the efficacy or mechanism of an individual module.

SSE / IM / SDE claims require evidence appropriate to those individual claims.

### 5.4 Complexity boundary

Params and FLOPs are static complexity indicators.

They do not by themselves establish:

- runtime speed;
- inference latency;
- throughput;
- VRAM use;
- deployment suitability;
- resource-constrained-device suitability.

Those claims require their own verified measurements.

### 5.5 Visualization boundary

Limited qualitative examples may describe visible morphology and may complement quantitative results.

They must not be generalized into whole-test-set capability, robustness, generalization, or mechanism proof.

### 5.6 Statistical language

Do not use “显著” as a statistical claim without statistical evidence or a clearly defined quantitative standard.

---

## 6. CH04_METHOD_EVIDENCE_GUARDRAIL

`CH04_METHOD_EVIDENCE_GUARDRAIL = ARCHITECTURE-DEPENDENT`

Method prose must follow:

problem
-> design motivation
-> information flow
-> verified design
-> mathematical expression when supported
-> relation to the base structure
-> bounded expected role

Module names must not replace design motivation.

Before the final architecture is frozen by verified evidence, do not invent or infer:

- implementation details;
- connections;
- equations;
- tensor/channel settings;
- kernel sizes;
- fusion operations;
- normalization;
- gating/attention form;
- residual relations;
- loss;
- training protocol;
- evaluation protocol.

Do not expose paper/code/source conflicts in rendered formal body.

Resolve conflicts internally or report them to GPT A.

Method prose must remain positive technical explanation and must not become a defensive sequence of:

- 不是……
- 不等于……
- 不进一步……
- 不推断……
- 不补充……

---

## 7. CH04_EXPERIMENT_PROSE_GUARDRAIL

`CH04_EXPERIMENT_PROSE_GUARDRAIL = HARD_GATE`

Chapter 4 experiment analysis should normally follow:

setting
-> phenomenon
-> quantitative difference
-> method relation
-> evidence-bounded interpretation
-> exception / limitation when necessary

Experiment prose must not:

- merely read values from a table;
- become a Source Packet in prose form;
- narrate evidence identities or governance decisions;
- explain missing evidence to the thesis reader;
- construct causal/module conclusions unsupported by the experiment design.

Evidence strength and conclusion strength must match.

---

## 8. CH03_TO_CH04_INTERFACE

`CH03_TO_CH04_INTERFACE = FROZEN`

Whole-thesis progression:

Chapter 3:

`空间维度局部--全局协同`

->

Chapter 4:

`尺度维度结构信息组织与利用`

Chapter 4 must inherit and advance the whole-thesis research question.

It must not be written as:

- an independent parallel project;
- a replacement for Chapter 3;
- a repair of a failed Chapter 3;
- “adding three more modules” to the previous method.

The academic progression is from spatial coordination to scale-level structural-information coordination.

---

## 9. TASK_CARD_INHERITANCE

`TASK_CARD_INHERITANCE = MANDATORY`

Every Chapter 4 Section Task Card (`S4-*`) must include:

`MANDATORY_REPO_DOCS: docs/CH04_AUTHORING_GUARDRAILS.md`

Every B4 Gate A must check this file before declaring:

`GATE_A_PASSED`

Every A4 Gate C repository final review must recheck the applicable guardrails in this file before granting:

`SECTION_ACCEPTED`

Codex mechanical integration must preserve these guardrails and must not convert Source Packet / Author Notes / governance language into rendered body prose.

At the Chapter 4 Chapter Gate, A4 must perform a whole-chapter audit covering at minimum:

- Formal Thesis Voice Firewall;
- source-audit leakage;
- placeholder leakage;
- pre-study/final-efficacy separation;
- result-claim scope;
- module-efficacy attribution;
- complexity-claim scope;
- visualization-claim scope;
- statistical language;
- terminology consistency;
- Chapter 3 -> Chapter 4 progression.

---

## 10. CHAPTER_4_ZERO_REGRESSION_RULE

`CHAPTER_4_ZERO_REGRESSION_RULE = HARD_GATE`

The error classes corrected during Chapter 3 post-acceptance quality revision must not reappear in Chapter 4.

Zero-regression scope includes:

- source-audit disclaimers in rendered prose;
- governance/evidence terminology leakage;
- internal Work1 / Work2 / R2 labels in visible body;
- unsupported result overclaim;
- undefined comparison language;
- mechanism claims derived from insufficient evidence;
- static-complexity overinterpretation;
- limited-visualization overgeneralization;
- defensive or mechanical meta-prose;
- terminology inconsistency that affects formal definitions;
- placeholder values presented as verified findings.

A violation blocks Gate A, Gate C, or the Chapter Gate as applicable.

---

## 11. Enforcement

These Chapter 4 guardrails are mandatory for:

- A4 Section Task Card authoring;
- B4 formal drafting;
- B4 Gate A;
- Codex integration boundary checks;
- A4 Gate C repository review;
- Chapter 4 Chapter Gate.

Passing an earlier section does not waive these rules for later sections.

`CH04_AUTHORING_GUARDRAILS = ACTIVE / HARD_GATE`
