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

The v2 repo activation path is documented in `docs/activation.md`.

Run the current repo validation entrypoint with:

```bash
scripts/run-plugin-index-checks.sh
```
