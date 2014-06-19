#!/bin/bash

set +e
if [ ! -d "$HOME/.rbenv" ]; then
  echo "installing rbenv..."
  git clone "https://github.com/sstephenson/rbenv.git" "$HOME/.rbenv"
else
  echo "rbenv already installed"
fi

if [ ! -d "$HOME/.rbenv/plugins/ruby-build" ]; then
  echo "installing ruby-build..."
  git clone "https://github.com/sstephenson/ruby-build.git" "$HOME/.rbenv/plugins/ruby-build"
else
  echo "ruby-build already installed"
fi

latest_ruby=$($HOME/.rbenv/bin/rbenv install -l | grep '^[ ]*[0-9]\.[0-9]\.[0-9]$' | tail -n 1)
echo Installing $latest_ruby

$HOME/.rbenv/bin/rbenv install $latest_ruby

$HOME/.rbenv/bin/rbenv global $latest_ruby

$HOME/.rbenv/shims/gem install mustache

eval "$($HOME/.rbenv/bin/rbenv init - --no-rehash)"
