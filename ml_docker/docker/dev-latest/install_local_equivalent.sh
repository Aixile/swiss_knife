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

pip install tensorflow==1.8.0rc0  # not "tensorflow-gpu"
pip install keras==2.1.5
pip install chainer==4.0.0rc1

# Misc
pip install tensorflowjs  # needs to update some pkgs
pip install -U scikit-learn
pip install \
    joblib records babel tabulate python-gflags yapf flake8 absl-py \
    Pillow tqdm h5py
pip install pylint
pip install dm-sonnet
pip install autopep8
#-------------------------------------------------------------------------------
