# Tests

`tests/` is the contract validation lane for `uDOS-plugin-index`.

Current validation contract:

- `scripts/run-plugin-index-checks.sh` verifies required repo surfaces
- sample manifests must stay aligned with the checked-in schema
- private local-root references must not leak into tracked contract docs

Phase 1 rule:

- keep tests lightweight and contract-first
- use runtime repos for plugin execution behavior
