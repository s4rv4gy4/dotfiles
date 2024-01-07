#!/usr/bin/env fish

function cmkdir
  mkdir -p $argv
  and cd $argv
end
