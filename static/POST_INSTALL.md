# Post Install Steps

A few of the things that weren't easily automated.

## Initial Housecleaning

The post install installs all `vim` plugins and updates the ZSH config

```bash
# run the post install script
./post.sh

# load zshrc changes
su $USER

# login GitHub CLI
gh auth login

cd jetbrains-toolbox
./jetbrains-toolbox
```

## Get Rolling

- Hook up to Dropbox
- Grab your Keepass DB
- Install Android Studio via Toolbox
- Run ```flutter doctor``` to complete Flutter setup
- Install [Discord](https://discord.com/download)
- Install [Insomnia](https://insomnia.rest)
- (Mint) Install [ULauncher](https://ulauncher.io/#Download) app launcher

## NOTE:

If you are seeing an error `unknown option: --zsh` it is likely because a version of fzf lower that 0.48 was installed
and the file `~/.fzf.zsh` is expecting to support the newer flag. The pre-48 version looks something like

```bash
# Setup fzf
# ---------
if [[ ! "$PATH" == */home/tgoshinski/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/tgoshinski/.fzf/bin"
fi

## Remove if 48 comes to Ubutnu
# Auto-completion
#----------------
[[ $- == *i* ]] && source "/home/tgoshinski/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
#-------------
source "/home/tgoshinski/.fzf/shell/key-bindings.zsh"

## Add if 48 comes to Ubuntu
# source <(fzf --zsh)
```
