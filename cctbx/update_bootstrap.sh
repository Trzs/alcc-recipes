#!/usr/bin/env bash

# this () { echo $(readlink -f $(dirname ${BASH_SOURCE[0]})); }
shopt -s expand_aliases
alias this="readlink -f \$(dirname \${BASH_SOURCE[0]})"


pushd $(this)
if [[ -f bootstrap.py ]]
then
    rm bootstrap.py
fi
wget "https://raw.githubusercontent.com/cctbx/cctbx_project/master/libtbx/auto_build/bootstrap.py" --no-check-certificate
popd
