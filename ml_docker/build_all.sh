#!/usr/bin/env bash

#######################################
# Bash3 Boilerplate Start
# copied from https://kvz.io/blog/2013/11/21/bash-best-practices/

set -o errexit
set -o pipefail
set -o nounset
# set -o xtrace

# Set magic variables for current file & dir
__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__file="${__dir}/$(basename "${BASH_SOURCE[0]}")"
__base="$(basename ${__file} .sh)"
__root="$(cd "$(dirname "${__dir}")" && pwd)" # <-- change this as it depends on your app

arg1="${1:-}"
# Bash3 Boilerplate End
#######################################

(
  cd "${__dir}/docker" ;

  for d in `ls` ; do
    docker_tag="local:$d"
    docker build -t "${docker_tag}" "$d"
  done
)