#!/usr/bin/env zsh

touch .hushlogin

# put Vim back to the way I like it
vim -E +PlugInstall +qall

# if 'bat' installed as 'batcat', symlink it to 'bat'
if [[ -e /usr/bin/batcat ]]; then
  ln -s /usr/bin/batcat ~/.local/bin/bat
fi

# likewise with 'fd' and 'fdfind'
if [[ -e /usr/bin/fdfind ]]; then
  ln -s /usr/bin/fdfind ~/.local/bin/fd
fi

# install useful TUIs
go install github.com/jesseduffield/lazydocker@latest
go install github.com/jesseduffield/lazygit@latest
go install github.com/wagoodman/dive@latest
uv tool install --python 3.12 posting