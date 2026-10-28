#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_mcp_call info
PYTHONPATH=src python -m gbt_mcp_call check --payload '{}'
PYTHONPATH=src python -m gbt_mcp_call run   --payload '{}'
