FROM ubuntu:jammy
WORKDIR /usr/local/bin
ARG DEBIAN_FRONTEND=noninteractive

RUN apt update \
    && apt install -y software-properties-common \
    && apt-add-repository -y ppa:ansible/ansible \
    && apt update \
    && apt install -y curl git ansible build-essential sudo

RUN groupadd -g 1001 tgoshinski \
    && useradd -rm -d /home/tgoshinski -s /bin/bash -g tgoshinski -G sudo -u 1000 tgoshinski \
    && passwd -d tgoshinski \
    && echo tgoshinski:p455w0rd | chpasswd

COPY . .

USER tgoshinski
# CMD ["sh", "-c", "ansible-playbook $TAGS local.yml"]

