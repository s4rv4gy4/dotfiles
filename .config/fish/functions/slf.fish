#!/usr/bin/env fish

function slf -w stylua
  stylua --allow-hidden --color auto --glob **/**.lua \
    --no-editorconfig --num-threads 25 --call-parentheses Always \
    --collapse-simple-statement Never --column-width 80 \
    --indent-type Spaces --indent-width 2 --line-endings Unix \
    --quote-style AutoPreferDouble --verify --verbose -- .
end
