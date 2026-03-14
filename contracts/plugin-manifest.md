# Plugin Manifest Contract

`uDOS-plugin-index` defines the public shape of plugin manifests that can be
described across the uDOS v2 family.

## Required Fields

- `name`: stable plugin identifier
- `version`: version string for the published manifest target
- `entry`: public entrypoint or adapter path

## Optional Fields

- `capabilities`: stable capability declarations exposed by the plugin

## Notes

- this contract describes metadata, not runtime behavior
- install and execution semantics remain in the owning repos
- capability names should stay stable across docs, schema, and downstream usage
