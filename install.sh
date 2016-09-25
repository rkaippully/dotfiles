#!/bin/bash

#
# Shell script to install dotfiles
#

DIR=`pwd`/`dirname $0`

# Spacemacs
if [[ -e ${HOME}/.spacemacs ]]; then
  echo "${HOME}/.spacemacs already exists. Skipping"
else
  echo "Creating ${HOME}/.spacemacs"
  ln -s ${DIR}/.spacemacs ${HOME}/.spacemacs
fi
