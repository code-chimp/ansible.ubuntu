# Post Install Steps

A few of the things that weren't easily automated.

## Vim Plugins

```bash
vim +PlugInstall +qall
nvim +PlugInstall +qall
```

## My zsh Config

```cp ~/.zshrc.full ~/.zshrc```

## Get Rolling

- Hook up to Dropbox
- Grab your Keepass DB
- Install Another Redis Desktop Client `sudo snap install another-redis-desktop-manager`
- Install [Discord](https://discord.com/download)
- Install [Insomnia](https://insomnia.rest)

## Node

```bash
nvm i v17
nvm alias default stable
```

## JetBrains Toolbox

```bash
cd jetbrains-toolbox
./jetbrains-toolbox
```
