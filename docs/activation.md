# uDOS-plugin-index Activation

## Purpose

This document marks the first active implementation tranche for
`uDOS-plugin-index`.

The activation goal is to make the plugin registry surfaces teachable,
checkable, and ready for contract evolution without broadening ownership
beyond:

- plugin manifest contracts
- machine-readable schema surfaces
- capability and compatibility descriptors
- registry-facing examples and metadata notes

## Activated Surfaces

- `contracts/` as the public manifest contract lane
- `schemas/` as the machine-readable validation lane
- `scripts/run-plugin-index-checks.sh` as the repo validation entrypoint
- `tests/` as the schema and sample-manifest validation lane
- `examples/basic-plugin-manifest.json` as the smallest contract example

## Current Validation Contract

Run:

```bash
scripts/run-plugin-index-checks.sh
```

This command:

- verifies the required repo entry surfaces exist
- checks that the plugin manifest schema and sample contract are structurally valid
- rejects private local-root path leakage in tracked repo docs and scripts

## Boundaries

This activation does not move ownership into `uDOS-plugin-index` for:

- plugin runtime loading
- provider or transport implementation
- package installation execution
- distribution tooling owned elsewhere in the family
