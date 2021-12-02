# Post Install Steps

A few of the things that weren't easily automated.

## Initial Housecleaning

```bash
vim +PlugInstall +qall
nvim +PlugInstall +qall
cp ~/.zshrc.full ~/.zshrc
su tgoshinski
nvm i v17
nvm alias default stable
cd jetbrains-toolbox
./jetbrains-toolbox
```

## Get Rolling

- Hook up to Dropbox
- Grab your Keepass DB
- Install Android Studio via Toolbox
- Run ```flutter doctor``` to complete Flutter setup
- Install Another Redis Desktop Client `sudo snap install another-redis-desktop-manager`
- Install [Discord](https://discord.com/download)
- Install [Insomnia](https://insomnia.rest)
