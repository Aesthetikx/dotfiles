#!/bin/bash
set -e

scriptdir="$HOME/dotfiles/scripts"
echo Installing scripts from $scriptdir

for script in $(ls $scriptdir/*-install-* | sort -n)
do
  bash $script
done

rcup -d $HOME/dotfiles -x README.md -x LISCENSE -x Brewfile -x scripts
