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

```
ansible-pull --ask-become-pass --ask-vault-pass -U https://github.com/code-chimp/ansible.ubuntu.git
```

## Note(s)

- The docker image is really only used for debugging new tasks.