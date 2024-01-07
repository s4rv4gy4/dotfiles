#!/usr/bin/env fish

set -q _init_abbr; and return

abbr -a -- zz exit
abbr -a -- vim nvim
abbr -a -- cns "rm -rf ~/.local/share/nvim ~/.local/state/nvim"

set -g _init_abbr true
