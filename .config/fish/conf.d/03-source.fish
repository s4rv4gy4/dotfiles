#!/usr/bin/env fish

type -q zoxide
or return 1

zoxide init fish | source
