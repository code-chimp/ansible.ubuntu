# Ubuntu Base System Playbook

## Set new box up for running playbooks

Install the basics to bootstrap automation

```
apt install -y software-properties-common \
&& apt-add-repository -y ppa:ansible/ansible \
&& apt install -y curl git ansible build-essential sudo \
&& usermod -aG sudo tgoshinski
```

Login as user and should be able to let ansible handle the rest

### Run local

```bash
git clone https://github.com/code-chimp/ansible.ubuntu
cd ansible.ubuntu
ansible-playbook --ask-become-pass --ask-vault-pass local.yml
```

### Run remote

**NOTE:** `--ask-vault-pass` is incorrectly listed as an option for `ansible-pull` so need to supply
 a password file if attempting a remote pull

```
echo '<mondo secure password>' > DELETE_ME
ansible-pull -K --vault-pass-file DELETE_ME -U https://github.com/code-chimp/ansible.ubuntu.git
rm DELETE_ME
```

## Note(s)

- The docker image is really only used for debugging new tasks