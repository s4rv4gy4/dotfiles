#!/usr/bin/env fish

function j -w zoxide
  z $argv
  echo ":: in $(pwd) 🍻"
end
