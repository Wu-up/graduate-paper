# Citation and Source Risk Log

This log records citation, source, publication, dataset, metric, and claim risks that must be checked before formal thesis prose uses them.

## RISK-001 Work1 publication metadata

- Status: PUBLICATION_PENDING
- DOI status: DOI_NOT_YET_AVAILABLE
- Current safe identity: IJCNN / WCCI 2026 conference paper identity, conference participation/presentation evidence, and available official programme/proceedings listing may be recorded when supported by existing materials.
- Not allowed: invented DOI, IEEE Xplore article number, page range, volume, issue, or a `Published with DOI` status.
- Resolution trigger: recheck after formal publication / IEEE Xplore record appears, expected by author confirmation around the end of 2026.

## RISK-002 Work1 ACDC LV

- Status: RESOLVED
- Resolved value: LV DSC = 96.56%
- Prior erroneous value: LV DSC = 96.65%
- Fact source: `D:/Graduate/vil-unet-work2-bootstrap/source_materials/work1_paper.pdf`, Table II on PDF page 5, row `ViL-UNet(ours) 2025 92.79 91.16 90.54 96.56`; page 6 text also states the left ventricle reaches 96.56%.
- Correction task: P-003B-R1
- Correction date: 2026-08-28
- Governance decision: `docs/FACTS_AND_NUMBERS.md` now uses 96.56 as the Work1 `PAPER_REPORTED` ACDC LV value. The earlier 96.65 entry is treated as an early manual transcription error.

## RISK-003 Work1 complexity claim

- Status: OPEN
- Rule: xLSTM / Vision-LSTM theory references must not be used to derive the claim that the concrete Work1 implementation is strictly O(N).
- Safe boundary: theoretical architecture properties and the current Work1 implementation complexity must be governed separately.

## RISK-004 Synapse / BTCV

- Status: OPEN
- Rule: dataset source identity and the actual experimental protocol must remain separate.
- Dataset source identity: 2015 MICCAI Multi-Atlas Labeling Beyond the Cranial Vault / official Synapse source.
- Protocol fields requiring Work1 or Work2 evidence: train/test split, organ subset, preprocessing, and evaluation implementation.
- Not allowed: automatically filling common 18/12 splits or organ subsets from other papers.

## RISK-005 Difficult organs

- Status: OPEN
- Rule: Gallbladder / Pancreas and similar structures may be described as difficult only within a specific benchmark or published-study condition.
- Not allowed: presenting them as a universal law of medical image segmentation without stronger cross-evidence.

## RISK-006 Work2 claim boundary

- Status: OPEN
- Rule: external literature cannot prove final Work2 effectiveness in advance.
- Not allowed as literature-proven conclusions: SSE is effective, IM is better than history propagation, SDE improves boundaries, or No-History is better than Full History.
- Required closure: final Work2 evidence, frozen by the actual experiment and governance files.

## RISK-007 HD95 implementation

- Status: OPEN
- Theory status: RESOLVED
- Theory source: `taha2015metrics`
- Thesis theory definition: `HD95(A,B) = max{P95(d(A,B)), P95(d(B,A))}`, where P95 is the 95th percentile of the shortest surface-distance sets.
- Implementation status: PENDING_FINAL_IMPLEMENTATION
- Resolution trigger: after final Work1/Work2 evaluation code or software protocol is confirmed, record the actual source such as MONAI, MedPy, or the frozen local implementation.
