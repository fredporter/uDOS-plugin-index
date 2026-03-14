# Plugin Manifest Contract

`uDOS-plugin-index` defines the public shape of plugin manifests that can be
described across the uDOS v2 family.

## Required Fields

- `name`: stable plugin identifier
- `version`: version string for the published manifest target
- `capability`: primary stable capability declaration owned by the plugin
- `trust`: trust classification for install and discovery policy

## Optional Fields

- `entry`: public entrypoint or adapter path
- `capabilities`: additional stable capability declarations exposed by the plugin
- `compatibility`: compatibility notes for core, shell, and wizard surfaces
- `certification`: placeholder status for future certification flows
- `source`: wrapped repo or package source metadata

## Notes

- this contract describes metadata, not runtime behavior
- install and execution semantics remain in the owning repos
- capability names should stay stable across docs, schema, and downstream usage
- trust classes should remain one of `certified`, `community`, or `local`
