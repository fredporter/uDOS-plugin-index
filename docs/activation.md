# uDOS-plugin-index Activation

The plugin index is active as the family registry lane for plugin manifests and
compatibility metadata.

## Activated Surfaces

- `contracts/` as the public manifest contract lane
- `schemas/` as the machine-readable validation lane
- `scripts/run-plugin-index-checks.sh` as the repo validation entrypoint
- `tests/` as the schema and sample-manifest validation lane
- `examples/basic-plugin-manifest.json` as the smallest contract example

## Validation Contract

Run:

```bash
bash scripts/run-plugin-index-checks.sh
```

This path verifies the required repo surfaces and checks the sample manifest
contract.

## Boundary Rule

The plugin index does not own plugin runtime loading, provider or transport
implementation, package installation execution, or distribution tooling.
