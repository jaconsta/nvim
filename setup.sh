#!/bin/bash

export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"
mkdir -p "$XDG_CONFIG_HOME"/nixpkgs

ln -sf "$PWD/nvim" "$XDG_CONFIG_HOME"/nvim

ln -sf "$PWD/.tmux.conf" "$HOME"/.tmux.conf
ln -sf "$PWD/config.nix" "$XDG_CONFIG_HOME"/nixpkgs/config.nix

if [ -x "$(command -v nix-env)" ]; then
  echo 'Install nix packages.'
  nix-env -iA nixpkgs.myPackages
fi
