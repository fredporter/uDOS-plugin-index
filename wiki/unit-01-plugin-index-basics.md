# Unit 01: Plugin Index Basics

## What This Module Is

`uDOS-plugin-index` is the family registry for plugin manifests, capability
metadata, and compatibility descriptors.

## What You Should Learn

By the end of this unit you should be able to:

- explain what the plugin index owns
- describe the difference between a registry and a runtime
- locate the manifest contracts and schemas

## Practical How-To

1. Inspect `contracts/`.
2. Inspect `schemas/`.
3. Run the repo checks.

```bash
ls contracts
ls schemas
bash scripts/run-plugin-index-checks.sh
```

## Quick Check

You pass this unit if you can answer:

- What does the plugin index own?
- What does it not execute?
- Where do the validation rules live?
