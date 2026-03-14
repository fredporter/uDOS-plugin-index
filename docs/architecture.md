# uDOS-plugin-index Architecture

The plugin index is a registry surface, not a runtime.

## Main Areas

- `contracts/` captures public manifest expectations.
- `schemas/` holds machine-readable validation rules.
- `docs/` explains packaging, installation, and compatibility.
- `scripts/run-plugin-index-checks.sh` is the activation validation entrypoint.
