#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <research-name>"
  exit 1
fi

name="$1"

if [[ ! "$name" =~ ^[a-z0-9][a-z0-9-]*$ ]]; then
  echo "Error: research name must match ^[a-z0-9][a-z0-9-]*$"
  echo "Example: llm-eval-2026-q1"
  exit 1
fi

root_dir="$(cd "$(dirname "$0")/.." && pwd)"
template_dir="$root_dir/researches/_template"
target_dir="$root_dir/researches/$name"

if [[ ! -d "$template_dir" ]]; then
  echo "Error: template directory not found: $template_dir"
  exit 1
fi

if [[ -e "$target_dir" ]]; then
  echo "Error: target already exists: $target_dir"
  exit 1
fi

cp -R "$template_dir" "$target_dir"

cat <<MSG
Created: researches/$name

Next steps:
1) Fill in researches/$name/research-plan.md
2) Put source data into researches/$name/data/raw/
3) Write findings in researches/$name/report.md
MSG
