#!/usr/bin/env fish

function ixfisher
  if test ! -f ~/.config/fish/fish_plugins
    curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish \
      | source && fisher install jorgebucaran/fisher
  end
end
