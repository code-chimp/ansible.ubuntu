# Post Install Steps

A few of the things that weren't easily automated.

## Initial Housecleaning

The post install installs all `vim` plugins and updates the ZSH config

```bash
v# run the post install script
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
- Install Another Redis Desktop Client `sudo snap install another-redis-desktop-manager`
- Install [Discord](https://discord.com/download)
- Install [Insomnia](https://insomnia.rest)
