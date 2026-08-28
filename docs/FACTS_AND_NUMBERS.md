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

Except for the separate PAPER_REPORTED Work1 Mean DSC value `85.12`, this
entire organ-level decomposition table is THESIS_PLACEHOLDER. Do not upgrade
the ViL-UNet row to PAPER_REPORTED merely because its Mean equals `85.12`.

| Model | Aorta | Gallbladder | Kidney(L) | Kidney(R) | Liver | Pancreas | Spleen | Stomach | Mean | Ledger prefix |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---|
| ViL-UNet | 89.74 | 72.31 | 86.92 | 85.87 | 95.26 | 69.84 | 92.41 | 88.61 | 85.12 | PH-W2-ORG-VIL-* |
| Full SSSM | 90.02 | 71.94 | 87.10 | 86.04 | 95.42 | 69.55 | 92.67 | 90.01 | 85.34 | PH-W2-ORG-FULL-* |
| No-History | 90.46 | 74.18 | 87.71 | 86.82 | 95.51 | 72.13 | 92.88 | 87.75 | 85.93 | PH-W2-ORG-NH-* |
| Work2 | 90.83 | 75.76 | 88.46 | 87.59 | 95.68 | 73.91 | 93.21 | 86.88 | 86.54 | PH-W2-ORG-W2-* |

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
