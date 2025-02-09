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
- Run `flutter doctor` to complete Flutter setup
- Install [Discord](https://discord.com/download)
- (opt) Install [ULauncher](https://ulauncher.io/#Download) app launcher

## Enable fingerprint reader on ThinkPad

```sh
sudo apt-get install fprintd libfprint-2-2 libpam-fprintd
fprintd-enroll [your username]
sudo pam-auth-update
```

## DisplayLink driver for USB-C hubs

Instructions at https://www.synaptics.com/products/displaylink-graphics/downloads/ubuntu
