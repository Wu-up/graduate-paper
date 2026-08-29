# FACTS_AND_NUMBERS

This file is the thesis evidence boundary. Any numeric value used in formal
thesis prose must appear here first, with an explicit evidence identity and
source. GitHub is the source of truth for this LaTeX project.

## Evidence Policy

### PAPER_REPORTED

Data already reported by the formal Work1 paper or an author-confirmed Work1
paper source packet. These values are paper claims, not local reproduction
results.

### EXPERIMENTALLY_VERIFIED

Data supported by formal experiment records, JSON/CSV logs, Gates, or other
frozen evidence in the research repository. These values may still have a
restricted interpretation scope.

### THESIS_PLACEHOLDER

Target or expected values used only for thesis structure drafting, table
layout, result-section placeholders, figure layout, and method-story rehearsal.
They are not final experiment results.

### LEGACY_PLACEHOLDER

Deprecated placeholder values preserved only to prevent later reuse or mixing.
They must not be used in new prose or tables except as a deprecated-history
record.

## Governance Rules

- PLACEHOLDER values must never be described as real experiment results.
- PLACEHOLDER values must not be automatically promoted to
  EXPERIMENTALLY_VERIFIED.
- Missing values must not be filled from memory or expectation.
- Every new value must record its source and evidence identity.
- If evidence categories conflict, stop writing and REPORT_TO_SUPERVISOR.
- PAPER_REPORTED, EXPERIMENTALLY_VERIFIED, THESIS_PLACEHOLDER, and
  LEGACY_PLACEHOLDER entries must not be mixed in one claim.
- Work2 final performance has not been verified in this file unless explicitly
  listed under EXPERIMENTALLY_VERIFIED as final Work2 evidence.

## PAPER_REPORTED

### Work1: ViL-UNet

Evidence identity: `PAPER_REPORTED`

Paper title: ViL-UNet: Beyond Transformers for 3D Medical Image Segmentation
with Vision-xLSTM

Method positioning:

- 3D CNN performs local feature modeling.
- Vision-xLSTM performs long-range global context modeling.
- Multi-directional sequence modeling strengthens local-global feature
  collaboration.

Source boundary:

- User-provided P-001 source packet.
- P-003B-R1 correction source for ACDC LV:
  `D:/Graduate/vil-unet-work2-bootstrap/source_materials/work1_paper.pdf`,
  Table II, PDF page 5.
- `Wu-up/vil-unet-work2` read-only verification file:
  `docs/WORK1_GROUND_TRUTH.md` at commit
  `0aac1dcd2ed789e1e57f15898d361b6f7f015125`.
- Do not mix later recovered-code parameter conflicts into this
  PAPER_REPORTED entry.

#### Synapse

| Metric | Value | Unit | Evidence |
|---|---:|---|---|
| Mean DSC | 85.12 | % | PAPER_REPORTED |
| HD95 | 12.49 | mm | PAPER_REPORTED |

#### ACDC

| Metric | Value | Unit | Evidence |
|---|---:|---|---|
| Mean DSC | 92.79 | % | PAPER_REPORTED |
| RV DSC | 91.16 | % | PAPER_REPORTED |
| MYO DSC | 90.54 | % | PAPER_REPORTED |
| LV DSC | 96.56 | % | PAPER_REPORTED |

Correction note, P-003B-R1, 2026-08-28: the earlier `96.65` LV entry was an
early manual transcription error. P-003B-R1 rechecked Work1 original paper
Table II and resolved the formal `PAPER_REPORTED` ACDC LV value to `96.56`.

#### Experimental Protocol

Evidence identity: `PAPER_REPORTED`

Source: authoritative Work1 paper, *ViL-UNet: Beyond Transformers for 3D Medical Image Segmentation with Vision-xLSTM*, Section IV `EXPERIMENTAL DETAILS`, PDF page 4.

##### Synapse / BTCV

| Field | Value | Evidence |
|---|---|---|
| Modality | CT | PAPER_REPORTED |
| Total patient cases | 30 | PAPER_REPORTED |
| Total axial contrast-enhanced images | 3779 | PAPER_REPORTED |
| Original in-plane resolution | 512 × 512 | PAPER_REPORTED |
| Training cases | 18 | PAPER_REPORTED |
| Testing cases | 12 | PAPER_REPORTED |
| Split description | random split, following TransUNet | PAPER_REPORTED |
| Evaluated organ count | 8 | PAPER_REPORTED |
| Evaluated organs | Aorta; Gallbladder; Kidney(L); Kidney(R); Liver; Pancreas; Spleen; Stomach | PAPER_REPORTED |

##### ACDC

| Field | Value | Evidence |
|---|---|---|
| Modality | cardiac MRI | PAPER_REPORTED |
| Training cases | 70 | PAPER_REPORTED |
| Validation cases | 10 | PAPER_REPORTED |
| Testing cases | 20 | PAPER_REPORTED |
| Annotated structures | LV; RV; Myocardium | PAPER_REPORTED |
| Cardiac phases | ED; ES | PAPER_REPORTED |

Scope note: the Work1 paper later contains a separate statement referring to `150 cardiac MRI scans`. This packet does not equate or reconcile that scan-count statement with the case-level `70 / 10 / 20` split. The scan count is intentionally excluded from this backfill.

##### Implementation

| Field | Value | Evidence |
|---|---|---|
| Framework | PyTorch | PAPER_REPORTED |
| Medical-imaging framework | MONAI | PAPER_REPORTED |
| Hardware | single NVIDIA RTX A100 GPU | PAPER_REPORTED |
| Optimizer | AdamW | PAPER_REPORTED |
| Initial learning rate | 1 × 10^-4 | PAPER_REPORTED |
| Weight decay | 1 × 10^-5 | PAPER_REPORTED |
| Evaluation metrics | DSC; HD95 | PAPER_REPORTED |

Not included because the authoritative Work1 source does not report them: concrete training loss, batch size, epochs, LR scheduler, augmentation pipeline, detailed preprocessing, resampling spacing, training crop/patch input size, sliding-window inference, or HD95 implementation library/function.

#### Work1 Synapse Comparison Results

Evidence identity: `PAPER_REPORTED`

Source: authoritative Work1 paper, Table I, PDF page 5.

Units:
- Mean DSC and organ-level DSC: `%`
- HD95: `mm`

| Method | Mean DSC | HD95 | Aorta | Gallbladder | Kidney(L) | Kidney(R) | Liver | Pancreas | Spleen | Stomach | Evidence |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---|
| Swin-Unet | 79.13 | 21.55 | 85.47 | 66.53 | 83.28 | 79.61 | 94.29 | 56.58 | 90.66 | 76.60 | PAPER_REPORTED |
| VM-UNet | 82.38 | 16.22 | 87.00 | 69.37 | 85.52 | 82.25 | 94.10 | 65.77 | 91.54 | 83.51 | PAPER_REPORTED |
| HC-Mamba | 79.58 | 26.34 | 89.93 | 67.65 | 84.57 | 78.27 | 95.38 | 52.08 | 89.49 | 79.84 | PAPER_REPORTED |
| Swin-UMamba | 82.26 | 19.51 | 86.32 | 70.77 | 83.66 | 81.60 | 95.23 | 69.36 | 89.95 | 81.14 | PAPER_REPORTED |
| MSVM-UNet | 85.00 | 14.75 | 88.73 | 74.90 | 85.62 | 84.47 | 95.74 | 71.53 | 92.52 | 86.51 | PAPER_REPORTED |
| MixFormer | 82.64 | 12.67 | 87.36 | 71.53 | 86.22 | 83.19 | 95.23 | 66.82 | 89.98 | 80.77 | PAPER_REPORTED |
| ViL-UNet | 85.12 | 12.49 | 90.04 | 74.93 | 89.17 | 84.72 | 95.83 | 71.91 | 92.70 | 86.70 | PAPER_REPORTED |

Result-provenance note: comparator values are transcribed from the Work1 paper's Table I. They remain `PAPER_REPORTED` Work1 result evidence and are not local reproductions.

#### Work1 ACDC Comparison Results

Evidence identity: `PAPER_REPORTED`

Source: authoritative Work1 paper, Table II, PDF page 5.

Unit: all values are DSC `%`.

| Method | Mean DSC | RV | Myo | LV | Evidence |
|---|---:|---:|---:|---:|---|
| Swin-Unet | 90.00 | 88.55 | 85.62 | 95.83 | PAPER_REPORTED |
| VM-UNet | 92.24 | 90.74 | 89.93 | 96.03 | PAPER_REPORTED |
| Swin-UMamba | 92.14 | 90.90 | 89.80 | 95.72 | PAPER_REPORTED |
| MSVM-UNet | 92.58 | 91.00 | 90.35 | 96.39 | PAPER_REPORTED |
| MixFormer | 91.01 | 89.02 | 88.46 | 95.55 | PAPER_REPORTED |
| ViL-UNet | 92.79 | 91.16 | 90.54 | 96.56 | PAPER_REPORTED |

Correction guard: Work1 ACDC LV is `96.56`, not `96.65`.

Result-provenance note: comparator values are transcribed from the Work1 paper's Table II. They remain `PAPER_REPORTED` Work1 result evidence and are not local reproductions.

#### Efficiency

| Metric | Value | Unit | Evidence |
|---|---:|---|---|
| Params | 16.48 | M | PAPER_REPORTED |
| FLOPs | 17.93 | G | PAPER_REPORTED |

#### ViL Block Ablation

| ViL blocks | Mean DSC | Unit | Evidence |
|---:|---:|---|---|
| 3 | 82.18 | % | PAPER_REPORTED |
| 6 | 85.12 | % | PAPER_REPORTED |
| 12 | 84.89 | % | PAPER_REPORTED |
| 18 | 84.01 | % | PAPER_REPORTED |
| 24 | 84.99 | % | PAPER_REPORTED |

The 6-block setting is the best result in this ablation.

## EXPERIMENTALLY_VERIFIED

### R2 Formal Pre-study Evidence

Evidence identity: `EXPERIMENTALLY_VERIFIED`

Nature: real Work2 design pre-study evidence. This is not the final Work2
experimental result.

Protocol:

| Field | Value |
|---|---|
| Dataset/protocol | BTCV |
| Stage | Formal |
| Seeds | 3 |
| Evaluation cases | 12 |
| Models | Baseline; Full SSSM; No-History |
| Formal Gate | R2_P3_FORMAL_BTCV_NOT_SUPPORTED |

Source provenance:

- Research repo: `Wu-up/vil-unet-work2`.
- Branch and PR head: `work2/r2-sssm-p3-formal-btcv` and PR #70 head both
  resolved by `git ls-remote` to
  `0aac1dcd2ed789e1e57f15898d361b6f7f015125`.
- PR #70 merge ref resolved by `git ls-remote` to
  `2f07e5614a3fbc152cded5e62d413cae0d9fdcca`.
- Evidence files read at commit `0aac1dcd2ed789e1e57f15898d361b6f7f015125`:
  - `configs/R2-P3/formal_btcv_validation.json`
  - `docs/logs/R2-P3/evaluation/summary.json`
  - `docs/logs/R2-P3/gate_audit_summary.json`
  - `docs/logs/R2-P3/statistics/summary.json`
  - `docs/logs/R2-P3/final_gate.json`
  - `docs/experiments/R2-P3/FORMAL_BTCV_REPORT.md`

Formal aggregate metrics:

| Model | Mean Dice | Small-organ Dice | Mean HD95 finite-only | Unit | Evidence |
|---|---:|---:|---:|---|---|
| Baseline | 0.19630880082134206 | 0.15012081630557517 | 145.44093427529234 | ratio / mm | EXPERIMENTALLY_VERIFIED |
| No-History | 0.3389875597120258 | 0.22933949594794298 | 136.86934050460377 | ratio / mm | EXPERIMENTALLY_VERIFIED |
| Full SSSM | 0.2141584353961993 | 0.1284342278439081 | 173.71662588316713 | ratio / mm | EXPERIMENTALLY_VERIFIED |

Formal statistics:

| Comparison | Value | Evidence |
|---|---:|---|
| Full minus Baseline small-organ Dice | -0.021686588461667062 | EXPERIMENTALLY_VERIFIED |
| Full minus Baseline small-organ Dice 95% bootstrap CI lower | -0.040409191976439114 | EXPERIMENTALLY_VERIFIED |
| Full minus Baseline small-organ Dice 95% bootstrap CI upper | -0.002163023105684433 | EXPERIMENTALLY_VERIFIED |
| Full minus Baseline Mean Dice | +0.01784963457485726 | EXPERIMENTALLY_VERIFIED |
| Full minus No-History small-organ Dice | -0.10090526810403493 | EXPERIMENTALLY_VERIFIED |
| Full/Baseline aggregate small-label ratio | 0.8555390984717042 | EXPERIMENTALLY_VERIFIED |

Allowed interpretation:

> Formal R2 results indicate that Full SSSM's cross-scale historical
> accumulation did not form a stable small-organ segmentation gain; the
> No-History control shows a scale-independent structural evidence signal that
> is more worth further study.

Forbidden interpretations:

- "No-History has already been proven to be the final Work2 method."
- "Formal R2 has already verified that the final scale-specific structural
  evidence modulation method is effective."

## THESIS_PLACEHOLDER

The following values are only for thesis structure drafting, table layout,
result-section placeholders, figure layout, and method-story rehearsal. They
are not final experiment results.

Detailed placeholder governance is in `docs/PLACEHOLDER_LEDGER.md`. Every
formal-source placeholder should use its ledger ID near the LaTeX source, for
example `% PLACEHOLDER_RESULT: PH-W2-MAIN-001`.

### Work2 Overall Target Placeholders

| Ledger ID | Item | Value | Unit |
|---|---|---:|---|
| PH-W2-MAIN-001 | Work2 Mean DSC | 86.54 | % |
| PH-W2-MAIN-002 | Work2 HD95 | 10.61 | mm |
| PH-W2-MAIN-003 | Work2 Params | 17.39 | M |
| PH-W2-MAIN-004 | Work2 FLOPs | 19.37 | G |
| PH-W2-MAIN-005 | Work2 Peak VRAM | 5.51 | GB |
| PH-W2-MAIN-006 | Work2 inference | 1.56 | s/volume |

Work1 values `85.12 / 12.49 / 16.48M / 17.93G` belong to PAPER_REPORTED. If
`Work1 Peak VRAM = 4.86 GB` or `Work1 inference = 1.42 s/volume` appears, it
must remain THESIS_PLACEHOLDER and is recorded as `PH-W1-EFF-001` and
`PH-W1-EFF-002`.

### Work2 Internal Placeholder Comparison

| Model | Mean DSC | HD95 | Evidence identity / ledger |
|---|---:|---:|---|
| ViL-UNet | 85.12 | 12.49 | PAPER_REPORTED reuse for comparison context |
| Full SSSM | 85.34 | 12.78 | PH-W2-FULL-001; PH-W2-FULL-002 |
| No-History | 85.93 | 11.28 | PH-W2-NH-001; PH-W2-NH-002 |
| Work2 | 86.54 | 10.61 | PH-W2-MAIN-001; PH-W2-MAIN-002 |

Current Full SSSM HD95 placeholder is `12.78`. The old Full SSSM HD95
placeholder is deprecated as `LEGACY-PH-W2-FULL-HD95-001` and must not be
reused.

### Synapse Organ-Level Placeholder Results

This active table contains Work2 planning placeholders only. The former
ViL-UNet placeholder row is preserved below as
`DEPRECATED_FOR_WORK1_RESULT_USE / LEGACY_PLACEHOLDER`; formal Work1 use is
the `PAPER_REPORTED` `Work1 Synapse Comparison Results` table above.

| Model | Aorta | Gallbladder | Kidney(L) | Kidney(R) | Liver | Pancreas | Spleen | Stomach | Mean | Ledger prefix |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---|
| Full SSSM | 90.02 | 71.94 | 87.10 | 86.04 | 95.42 | 69.55 | 92.67 | 90.01 | 85.34 | PH-W2-ORG-FULL-* |
| No-History | 90.46 | 74.18 | 87.71 | 86.82 | 95.51 | 72.13 | 92.88 | 87.75 | 85.93 | PH-W2-ORG-NH-* |
| Work2 | 90.83 | 75.76 | 88.46 | 87.59 | 95.68 | 73.91 | 93.21 | 86.88 | 86.54 | PH-W2-ORG-W2-* |

#### Deprecated Historical ViL-UNet Placeholder Row

`DEPRECATED_FOR_WORK1_RESULT_USE / LEGACY_PLACEHOLDER`

| Model | Aorta | Gallbladder | Kidney(L) | Kidney(R) | Liver | Pancreas | Spleen | Stomach | Mean | Ledger prefix |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---|
| ViL-UNet | 89.74 | 72.31 | 86.92 | 85.87 | 95.26 | 69.84 | 92.41 | 88.61 | 85.12 | PH-W2-ORG-VIL-* |

Replacement for Work1 formal-result use: `PAPER_REPORTED Work1 Synapse Comparison Results` in this file.

Arithmetic mean check over the eight organ columns:

| Model | Raw mean | Rounded mean | Recorded mean | Status |
|---|---:|---:|---:|---|
| ViL-UNet | 85.120 | 85.12 | 85.12 | PASS |
| Full SSSM | 85.344 | 85.34 | 85.34 | PASS |
| No-History | 85.930 | 85.93 | 85.93 | PASS |
| Work2 | 86.540 | 86.54 | 86.54 | PASS |

### Ablation Placeholders

| Variant | SSE | IM | SDE | Mean DSC | HD95 | Ledger prefix |
|---|---|---|---|---:|---:|---|
| ViL-UNet | no | no | no | 85.12 | 12.49 | PH-W2-ABL-VIL-* |
| Variant A | yes | no | no | 85.57 | 11.89 | PH-W2-ABL-A-* |
| Variant B | yes | yes | no | 85.96 | 11.32 | PH-W2-ABL-B-* |
| Variant C | yes | no | yes | 86.08 | 11.07 | PH-W2-ABL-C-* |
| Work2 | yes | yes | yes | 86.54 | 10.61 | PH-W2-ABL-W2-* |

### Difficult-Structure Candidate Auxiliary Statistic

Definition:

`Difficult-structure DSC = (Gallbladder DSC + Pancreas DSC) / 2`

This is an internal candidate auxiliary statistic for thesis design, not a
standard Synapse official metric. Final adoption must be decided by the GPT
supervisor during experiment-chapter design. It must not be called official
`Small-organ DSC`.

| Model | Value before rounding | Rounded value | Unit | Ledger ID |
|---|---:|---:|---|---|
| ViL-UNet | 71.075 | 71.08 | % | PH-W2-EFF-DIFF-001 |
| Full SSSM | 70.745 | 70.75 | % | PH-W2-EFF-DIFF-002 |
| No-History | 73.155 | 73.16 | % | PH-W2-EFF-DIFF-003 |
| Work2 | 74.835 | 74.84 | % | PH-W2-EFF-DIFF-004 |

## LEGACY_PLACEHOLDER

| Ledger ID | Description | Deprecated value | Replacement | Status |
|---|---|---:|---|---|
| LEGACY-PH-W2-FULL-HD95-001 | Old Full SSSM HD95 placeholder | 12.17 mm | PH-W2-FULL-002 = 12.78 mm | DEPRECATED |

## Current P-001 Consistency Notes

- R2 Formal BTCV evidence is isolated as EXPERIMENTALLY_VERIFIED pre-study
  evidence, not final Work2 evidence.
- Work2 expected values are isolated as THESIS_PLACEHOLDER.
- Full SSSM HD95 placeholder is unified to `12.78`.
- The deprecated old Full SSSM HD95 placeholder appears only under
  LEGACY_PLACEHOLDER.
- Work1 organ-level decomposition in the placeholder table remains
  THESIS_PLACEHOLDER, even where the row mean equals the PAPER_REPORTED Work1
  mean.
