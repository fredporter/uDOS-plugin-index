# uDOS-plugin-index

## Purpose

Public index for plugin manifests, package metadata, and capability declarations.

## Ownership

- plugin manifests
- adapter metadata
- capability contracts
- distribution compatibility notes

## Non-Goals

- runtime execution ownership
- provider bridge implementation
- package installation tooling

## Spine

- `contracts/`
- `schemas/`
- `docs/`
- `tests/`
- `scripts/`
- `config/`
- `examples/`

## Local Development

Keep manifests source-first and easy to audit.

## Family Relation

This repo describes what can plug into the family; it does not execute those plugins.

## Activation

The repo activation path is documented in `docs/activation.md`.
The registry foundation is documented in `docs/v2.0.1-registry-foundation.md`.

Run the current repo validation entrypoint with:

```bash
bash scripts/run-plugin-index-checks.sh
```
