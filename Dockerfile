FROM ubuntu:jammy
ARG DEBIAN_FRONTEND=noninteractive

RUN apt update \
    && apt upgrade -y \
    && apt install -y software-properties-common \
    && apt-add-repository -y ppa:ansible/ansible \
    && apt install -y curl git ansible build-essential sudo

RUN groupadd -g 1001 tgoshinski \
    && useradd -rm -d /home/tgoshinski -s /bin/bash -g tgoshinski -G sudo -u 1000 tgoshinski \
    && passwd -d tgoshinski \
    && echo tgoshinski:p455w0rd | chpasswd

WORKDIR /home/tgoshinski/ansible

COPY . .

WORKDIR /home/tgoshinski
USER tgoshinski
# CMD ["sh", "-c", "ansible-playbook $TAGS ./ansible/playbook.yml"]

