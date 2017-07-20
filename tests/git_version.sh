#!/usr/bin/env bash
set -euo pipefail

_git=false
function git() {
  $_git
}

script_dir="$( builtin cd "$(dirname "${BASH_SOURCE[0]}")" && pwd )"
source "$(dirname "$script_dir")/worktree.sh"

_git=true
_worktree_check_version

_git=false
! _worktree_check_version 2>/dev/null
