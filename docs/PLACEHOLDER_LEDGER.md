# PLACEHOLDER_LEDGER

This ledger is the required registry for thesis placeholder numbers. A
placeholder value may be used in LaTeX only when the nearby source keeps a
matching marker such as `% PLACEHOLDER_RESULT: PH-W2-MAIN-001`.

Default status: `ACTIVE_PLACEHOLDER`

Default evidence status: `THESIS_PLACEHOLDER`

## Rules

- Placeholders are not final experiment results.
- Placeholders must not be described as verified performance.
- Placeholders must not be promoted without a new verified source recorded in
  `docs/FACTS_AND_NUMBERS.md`.
- Deprecated placeholders stay in this ledger as `LEGACY_PLACEHOLDER`.
- If a placeholder conflicts with verified evidence, stop and
  REPORT_TO_SUPERVISOR.

## Main Work2 Target Placeholders

| ID | Description | Value | Unit | Table/Usage | Status | Replacement Rule | Evidence Status |
|---|---|---:|---|---|---|---|---|
| PH-W2-MAIN-001 | Work2 Mean DSC | 86.54 | % | Work2 overall target table; internal comparison; ablation summary | ACTIVE_PLACEHOLDER | Replace only after verified Work2 final evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-MAIN-002 | Work2 HD95 | 10.61 | mm | Work2 overall target table; internal comparison; ablation summary | ACTIVE_PLACEHOLDER | Replace only after verified Work2 final evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-MAIN-003 | Work2 Params | 17.39 | M | Work2 efficiency target table | ACTIVE_PLACEHOLDER | Replace only after verified model accounting is recorded | THESIS_PLACEHOLDER |
| PH-W2-MAIN-004 | Work2 FLOPs | 19.37 | G | Work2 efficiency target table | ACTIVE_PLACEHOLDER | Replace only after verified FLOPs accounting is recorded | THESIS_PLACEHOLDER |
| PH-W2-MAIN-005 | Work2 Peak VRAM | 5.51 | GB | Work2 efficiency target table | ACTIVE_PLACEHOLDER | Replace only after verified runtime profiling is recorded | THESIS_PLACEHOLDER |
| PH-W2-MAIN-006 | Work2 inference | 1.56 | s/volume | Work2 efficiency target table | ACTIVE_PLACEHOLDER | Replace only after verified runtime profiling is recorded | THESIS_PLACEHOLDER |

## Work1 Efficiency Placeholders

These values are not PAPER_REPORTED. They may appear only as placeholders.

| ID | Description | Value | Unit | Table/Usage | Status | Replacement Rule | Evidence Status |
|---|---|---:|---|---|---|---|---|
| PH-W1-EFF-001 | Work1 Peak VRAM | 4.86 | GB | Efficiency placeholder comparison | ACTIVE_PLACEHOLDER | Replace only after verified Work1 profiling evidence is recorded | THESIS_PLACEHOLDER |
| PH-W1-EFF-002 | Work1 inference | 1.42 | s/volume | Efficiency placeholder comparison | ACTIVE_PLACEHOLDER | Replace only after verified Work1 profiling evidence is recorded | THESIS_PLACEHOLDER |

## Work2 Internal Comparison Placeholders

| ID | Description | Value | Unit | Table/Usage | Status | Replacement Rule | Evidence Status |
|---|---|---:|---|---|---|---|---|
| PH-W2-FULL-001 | Full SSSM placeholder Mean DSC | 85.34 | % | Work2 internal comparison | ACTIVE_PLACEHOLDER | Replace only after verified final table evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-FULL-002 | Full SSSM placeholder HD95 | 12.78 | mm | Work2 internal comparison | ACTIVE_PLACEHOLDER | Replaces LEGACY-PH-W2-FULL-HD95-001 | THESIS_PLACEHOLDER |
| PH-W2-NH-001 | No-History placeholder Mean DSC | 85.93 | % | Work2 internal comparison | ACTIVE_PLACEHOLDER | Replace only after verified final table evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-NH-002 | No-History placeholder HD95 | 11.28 | mm | Work2 internal comparison | ACTIVE_PLACEHOLDER | Replace only after verified final table evidence is recorded | THESIS_PLACEHOLDER |

## Synapse Organ-Level Placeholder Table

Active entries in this section are `THESIS_PLACEHOLDER`. The historical
ViL-UNet placeholder entries have moved to `Legacy Placeholders`; they must not
be upgraded merely because their Mean column equals `85.12`.

| ID | Description | Value | Unit | Table/Usage | Status | Replacement Rule | Evidence Status |
|---|---|---:|---|---|---|---|---|
| PH-W2-ORG-FULL-AORTA | Full SSSM Aorta DSC | 90.02 | % | Synapse organ placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved organ-level evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ORG-FULL-GALLBLADDER | Full SSSM Gallbladder DSC | 71.94 | % | Synapse organ placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved organ-level evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ORG-FULL-KIDNEY-L | Full SSSM Kidney(L) DSC | 87.10 | % | Synapse organ placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved organ-level evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ORG-FULL-KIDNEY-R | Full SSSM Kidney(R) DSC | 86.04 | % | Synapse organ placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved organ-level evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ORG-FULL-LIVER | Full SSSM Liver DSC | 95.42 | % | Synapse organ placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved organ-level evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ORG-FULL-PANCREAS | Full SSSM Pancreas DSC | 69.55 | % | Synapse organ placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved organ-level evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ORG-FULL-SPLEEN | Full SSSM Spleen DSC | 92.67 | % | Synapse organ placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved organ-level evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ORG-FULL-STOMACH | Full SSSM Stomach DSC | 90.01 | % | Synapse organ placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved organ-level evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ORG-FULL-MEAN | Full SSSM organ-table Mean DSC | 85.34 | % | Synapse organ placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved organ-level evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ORG-NH-AORTA | No-History Aorta DSC | 90.46 | % | Synapse organ placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved organ-level evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ORG-NH-GALLBLADDER | No-History Gallbladder DSC | 74.18 | % | Synapse organ placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved organ-level evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ORG-NH-KIDNEY-L | No-History Kidney(L) DSC | 87.71 | % | Synapse organ placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved organ-level evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ORG-NH-KIDNEY-R | No-History Kidney(R) DSC | 86.82 | % | Synapse organ placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved organ-level evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ORG-NH-LIVER | No-History Liver DSC | 95.51 | % | Synapse organ placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved organ-level evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ORG-NH-PANCREAS | No-History Pancreas DSC | 72.13 | % | Synapse organ placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved organ-level evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ORG-NH-SPLEEN | No-History Spleen DSC | 92.88 | % | Synapse organ placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved organ-level evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ORG-NH-STOMACH | No-History Stomach DSC | 87.75 | % | Synapse organ placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved organ-level evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ORG-NH-MEAN | No-History organ-table Mean DSC | 85.93 | % | Synapse organ placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved organ-level evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ORG-W2-AORTA | Work2 Aorta DSC | 90.83 | % | Synapse organ placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved organ-level evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ORG-W2-GALLBLADDER | Work2 Gallbladder DSC | 75.76 | % | Synapse organ placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved organ-level evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ORG-W2-KIDNEY-L | Work2 Kidney(L) DSC | 88.46 | % | Synapse organ placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved organ-level evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ORG-W2-KIDNEY-R | Work2 Kidney(R) DSC | 87.59 | % | Synapse organ placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved organ-level evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ORG-W2-LIVER | Work2 Liver DSC | 95.68 | % | Synapse organ placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved organ-level evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ORG-W2-PANCREAS | Work2 Pancreas DSC | 73.91 | % | Synapse organ placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved organ-level evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ORG-W2-SPLEEN | Work2 Spleen DSC | 93.21 | % | Synapse organ placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved organ-level evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ORG-W2-STOMACH | Work2 Stomach DSC | 86.88 | % | Synapse organ placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved organ-level evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ORG-W2-MEAN | Work2 organ-table Mean DSC | 86.54 | % | Synapse organ placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved organ-level evidence is recorded | THESIS_PLACEHOLDER |

## Ablation Placeholders

| ID | Description | Value | Unit | Table/Usage | Status | Replacement Rule | Evidence Status |
|---|---|---:|---|---|---|---|---|
| PH-W2-ABL-VIL-MDSC | ViL-UNet ablation-row Mean DSC | 85.12 | % | Ablation placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved ablation evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ABL-VIL-HD95 | ViL-UNet ablation-row HD95 | 12.49 | mm | Ablation placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved ablation evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ABL-A-MDSC | Variant A Mean DSC; SSE yes, IM no, SDE no | 85.57 | % | Ablation placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved ablation evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ABL-A-HD95 | Variant A HD95; SSE yes, IM no, SDE no | 11.89 | mm | Ablation placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved ablation evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ABL-B-MDSC | Variant B Mean DSC; SSE yes, IM yes, SDE no | 85.96 | % | Ablation placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved ablation evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ABL-B-HD95 | Variant B HD95; SSE yes, IM yes, SDE no | 11.32 | mm | Ablation placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved ablation evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ABL-C-MDSC | Variant C Mean DSC; SSE yes, IM no, SDE yes | 86.08 | % | Ablation placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved ablation evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ABL-C-HD95 | Variant C HD95; SSE yes, IM no, SDE yes | 11.07 | mm | Ablation placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved ablation evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ABL-W2-MDSC | Work2 ablation-row Mean DSC; SSE yes, IM yes, SDE yes | 86.54 | % | Ablation placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved ablation evidence is recorded | THESIS_PLACEHOLDER |
| PH-W2-ABL-W2-HD95 | Work2 ablation-row HD95; SSE yes, IM yes, SDE yes | 10.61 | mm | Ablation placeholder table | ACTIVE_PLACEHOLDER | Replace only after approved ablation evidence is recorded | THESIS_PLACEHOLDER |

## Candidate Auxiliary Statistic Placeholders

`Difficult-structure DSC = (Gallbladder DSC + Pancreas DSC) / 2`.

This is an internal candidate auxiliary statistic, not a standard Synapse
official metric and not official `Small-organ DSC`.

| ID | Description | Value | Unit | Table/Usage | Status | Replacement Rule | Evidence Status |
|---|---|---:|---|---|---|---|---|
| PH-W2-EFF-DIFF-001 | ViL-UNet Difficult-structure DSC | 71.08 | % | Candidate auxiliary statistic | ACTIVE_PLACEHOLDER | Use only if GPT supervisor approves this statistic | THESIS_PLACEHOLDER |
| PH-W2-EFF-DIFF-002 | Full SSSM Difficult-structure DSC | 70.75 | % | Candidate auxiliary statistic | ACTIVE_PLACEHOLDER | Use only if GPT supervisor approves this statistic | THESIS_PLACEHOLDER |
| PH-W2-EFF-DIFF-003 | No-History Difficult-structure DSC | 73.16 | % | Candidate auxiliary statistic | ACTIVE_PLACEHOLDER | Use only if GPT supervisor approves this statistic | THESIS_PLACEHOLDER |
| PH-W2-EFF-DIFF-004 | Work2 Difficult-structure DSC | 74.84 | % | Candidate auxiliary statistic | ACTIVE_PLACEHOLDER | Use only if GPT supervisor approves this statistic | THESIS_PLACEHOLDER |

## Legacy Placeholders

| ID | Description | Value | Unit | Table/Usage | Status | Replacement Rule | Evidence Status |
|---|---|---:|---|---|---|---|---|
| LEGACY-PH-W2-FULL-HD95-001 | Deprecated Full SSSM HD95 placeholder | 12.17 | mm | Old Work2 internal comparison placeholder | DEPRECATED | Replacement: PH-W2-FULL-002 = 12.78 mm | LEGACY_PLACEHOLDER |
| PH-W2-ORG-VIL-AORTA | ViL-UNet Aorta DSC | 89.74 | % | Historical Synapse organ placeholder table | DEPRECATED | Replacement for Work1 formal-result use: PAPER_REPORTED Work1 Synapse Comparison Results in FACTS_AND_NUMBERS.md | LEGACY_PLACEHOLDER |
| PH-W2-ORG-VIL-GALLBLADDER | ViL-UNet Gallbladder DSC | 72.31 | % | Historical Synapse organ placeholder table | DEPRECATED | Replacement for Work1 formal-result use: PAPER_REPORTED Work1 Synapse Comparison Results in FACTS_AND_NUMBERS.md | LEGACY_PLACEHOLDER |
| PH-W2-ORG-VIL-KIDNEY-L | ViL-UNet Kidney(L) DSC | 86.92 | % | Historical Synapse organ placeholder table | DEPRECATED | Replacement for Work1 formal-result use: PAPER_REPORTED Work1 Synapse Comparison Results in FACTS_AND_NUMBERS.md | LEGACY_PLACEHOLDER |
| PH-W2-ORG-VIL-KIDNEY-R | ViL-UNet Kidney(R) DSC | 85.87 | % | Historical Synapse organ placeholder table | DEPRECATED | Replacement for Work1 formal-result use: PAPER_REPORTED Work1 Synapse Comparison Results in FACTS_AND_NUMBERS.md | LEGACY_PLACEHOLDER |
| PH-W2-ORG-VIL-LIVER | ViL-UNet Liver DSC | 95.26 | % | Historical Synapse organ placeholder table | DEPRECATED | Replacement for Work1 formal-result use: PAPER_REPORTED Work1 Synapse Comparison Results in FACTS_AND_NUMBERS.md | LEGACY_PLACEHOLDER |
| PH-W2-ORG-VIL-PANCREAS | ViL-UNet Pancreas DSC | 69.84 | % | Historical Synapse organ placeholder table | DEPRECATED | Replacement for Work1 formal-result use: PAPER_REPORTED Work1 Synapse Comparison Results in FACTS_AND_NUMBERS.md | LEGACY_PLACEHOLDER |
| PH-W2-ORG-VIL-SPLEEN | ViL-UNet Spleen DSC | 92.41 | % | Historical Synapse organ placeholder table | DEPRECATED | Replacement for Work1 formal-result use: PAPER_REPORTED Work1 Synapse Comparison Results in FACTS_AND_NUMBERS.md | LEGACY_PLACEHOLDER |
| PH-W2-ORG-VIL-STOMACH | ViL-UNet Stomach DSC | 88.61 | % | Historical Synapse organ placeholder table | DEPRECATED | Replacement for Work1 formal-result use: PAPER_REPORTED Work1 Synapse Comparison Results in FACTS_AND_NUMBERS.md | LEGACY_PLACEHOLDER |
| PH-W2-ORG-VIL-MEAN | ViL-UNet organ-table Mean DSC | 85.12 | % | Historical Synapse organ placeholder table | DEPRECATED | Replacement for Work1 formal-result use: PAPER_REPORTED Work1 Synapse Comparison Results in FACTS_AND_NUMBERS.md | LEGACY_PLACEHOLDER |
