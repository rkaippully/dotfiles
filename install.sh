#!/bin/bash

#
# Shell script to install dotfiles
#

DIR=`pwd`/`dirname $0`

function install-file()
{
    filename=$1
    src=${DIR}/${filename}
    dest=${HOME}/${filename}

    if [[ -e ${dest} ]]; then
        echo "${dest} already exists. Skipping"
    else
        echo "Creating ${dest}"
        mkdir -p `dirname ${dest}`
        ln -s ${src} ${dest}
    fi
}

install-file .spacemacs
install-file .stack/config.yaml
install-file .emacs.d/private/intero/packages.el
