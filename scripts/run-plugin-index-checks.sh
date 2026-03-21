#!/usr/bin/env bash

set -eu

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

require_file() {
  if [ ! -f "$1" ]; then
    echo "missing required file: $1" >&2
    exit 1
  fi
}

cd "$REPO_ROOT"

require_file "$REPO_ROOT/README.md"
require_file "$REPO_ROOT/docs/architecture.md"
require_file "$REPO_ROOT/docs/boundary.md"
require_file "$REPO_ROOT/docs/getting-started.md"
require_file "$REPO_ROOT/docs/examples.md"
require_file "$REPO_ROOT/docs/activation.md"
require_file "$REPO_ROOT/contracts/README.md"
require_file "$REPO_ROOT/contracts/plugin-manifest.md"
require_file "$REPO_ROOT/schemas/plugin-manifest.schema.json"
require_file "$REPO_ROOT/scripts/README.md"
require_file "$REPO_ROOT/tests/README.md"
require_file "$REPO_ROOT/config/README.md"
require_file "$REPO_ROOT/examples/README.md"
require_file "$REPO_ROOT/examples/basic-plugin-manifest.json"
require_file "$REPO_ROOT/examples/catalog.json"
require_file "$REPO_ROOT/docs/v2.0.1-registry-foundation.md"

python3 - <<'PY'
import json
from pathlib import Path

repo_root = Path(".").resolve()
schema = json.loads((repo_root / "schemas" / "plugin-manifest.schema.json").read_text(encoding="utf-8"))
example = json.loads((repo_root / "examples" / "basic-plugin-manifest.json").read_text(encoding="utf-8"))
catalog = json.loads((repo_root / "examples" / "catalog.json").read_text(encoding="utf-8"))

required = schema.get("required", [])
properties = schema.get("properties", {})

missing = [key for key in required if key not in example]
if missing:
    raise SystemExit(f"example manifest missing required fields: {missing}")

unexpected = [key for key in example if key not in properties]
if unexpected:
    raise SystemExit(f"example manifest contains unexpected fields: {unexpected}")

for key, rule in properties.items():
    if key not in example:
        continue
    value = example[key]
    expected_type = rule.get("type")
    if expected_type == "string" and not isinstance(value, str):
        raise SystemExit(f"{key} must be a string")
    if expected_type == "array":
        if not isinstance(value, list):
            raise SystemExit(f"{key} must be an array")
        item_type = rule.get("items", {}).get("type")
        if item_type == "string" and not all(isinstance(item, str) for item in value):
            raise SystemExit(f"{key} items must be strings")
    if expected_type == "object" and not isinstance(value, dict):
        raise SystemExit(f"{key} must be an object")

if catalog.get("version") != "v2.0.1":
    raise SystemExit("catalog version must be v2.0.1")

entries = catalog.get("entries")
if not isinstance(entries, list) or not entries:
    raise SystemExit("catalog entries must be a non-empty array")

for entry in entries:
    if not {"name", "trust", "capability"} <= entry.keys():
        raise SystemExit(f"catalog entry missing required fields: {entry}")
PY

if command -v rg >/dev/null 2>&1; then
    if rg -n '/Users/fredbook/Code|~/Users/fredbook/Code' \
        "$REPO_ROOT/README.md" \
        "$REPO_ROOT/docs" \
        "$REPO_ROOT/contracts" \
        "$REPO_ROOT/tests" \
        "$REPO_ROOT/examples" \
        "$REPO_ROOT/config"; then
        echo "private local-root reference found in uDOS-plugin-index" >&2
        exit 1
    fi
else
    if grep -R -nE '/Users/fredbook/Code|~/Users/fredbook/Code' \
        "$REPO_ROOT/README.md" \
        "$REPO_ROOT/docs" \
        "$REPO_ROOT/contracts" \
        "$REPO_ROOT/tests" \
        "$REPO_ROOT/examples" \
        "$REPO_ROOT/config"; then
        echo "private local-root reference found in uDOS-plugin-index" >&2
        exit 1
    fi
fi

echo "uDOS-plugin-index checks passed"
