# Config

`config/` is the checked-in configuration lane for registry metadata.

Family placement rule:

- put checked-in non-secret config templates and config examples here
- keep starter manifests and catalog samples in `examples/`
- reserve `defaults/` for reusable baseline policy or compatibility defaults

Current state:

- no extra registry config files are required yet
- repo validation is shell and Python standard-library based

Planned use of this root:

- registry metadata defaults
- future compatibility policy manifests
