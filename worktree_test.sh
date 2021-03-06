#!/usr/bin/env bash
set -euo pipefail

script_dir="$(builtin cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$script_dir/worktree.sh"

env -i "$script_dir/tests/git_version.sh"
env -i "$script_dir/tests/getter_defaults.sh"
env -i "$script_dir/tests/getter_overrides.sh"
env -i "$script_dir/tests/branch_name.sh"
env -i "$script_dir/tests/worktree_directory.sh"

# TODO: worktree_create, worktree_resume, worktree, travis

echo All tests passed.
