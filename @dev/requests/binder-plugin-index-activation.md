# Request: `#binder/plugin-index-activation`

- title: Activate `uDOS-plugin-index` as the next Tranche 4 repo-facing implementation surface
- requested by: v2 roadmap workflow
- owning repo or stream: `uDOS-plugin-index`
- binder: `#binder/plugin-index-activation`
- summary: Add the first repo-level activation and validation flow for `uDOS-plugin-index` while keeping ownership inside plugin manifest contracts, schemas, and compatibility descriptors.
- acceptance criteria:
  - `uDOS-plugin-index` exposes an activation doc
  - `uDOS-plugin-index` exposes a local validation command under `scripts/`
  - `uDOS-plugin-index` includes a minimal manifest walkthrough example
  - repo entry surfaces point to the activation flow
- dependencies:
  - `#binder/core-contract-enforcement`
  - `#binder/alpine-activation`
  - `uDOS-plugin-index` current schema surface
- boundary questions:
  - activation should stay inside contract and schema ownership
  - plugin execution remains outside this repo
  - installation tooling remains outside this repo
- due or milestone: v2 roadmap tranche 4

## Binder Fields

- state: `completed`
- owner: `uDOS-plugin-index`
- dependent repos:
  - `uDOS-dev`
- blocked by:
  - none
- target branch: `develop`
- objective:
  - make `uDOS-plugin-index` runnable and teachable without broadening its ownership boundary
- promotion criteria:
  - plugin-index activation docs, example, and validation entrypoint are committed
  - roadmap ledger reflects `uDOS-plugin-index` as the active repo-activation binder
- files or areas touched:
  - `uDOS-plugin-index/docs`
  - `uDOS-plugin-index/contracts`
  - `uDOS-plugin-index/scripts`
  - `uDOS-plugin-index/tests`
  - `uDOS-plugin-index/examples`
  - `uDOS-plugin-index/config`
  - `uDOS-dev/@dev`

## Lifecycle Checklist

- [x] Open
- [x] Hand off
- [x] Advance
- [x] Review
- [x] Commit
- [x] Complete
- [x] Compile
- [x] Promote
