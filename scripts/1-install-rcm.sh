#!/bin/bash
set -e
if [ ! -e $HOME/rcm ]; then
  echo "installing rcm..."
  git clone https://github.com/thoughtbot/rcm.git $HOME/rcm
else
  echo "rcm already installed"
fi

pushd $HOME/rcm

export PATH="$PATH:$HOME/.rbenv/shims/"

set +e
./autogen.sh
set -e

./configure
make
sudo make install

popd
