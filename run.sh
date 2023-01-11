#!/bin/bash

echo "root:${ROOT_PASSWORD}" | chpasswd || exit 1;

mkdir /root/development/
cd /root/development/
git config --global credential.helper "store --file ~/.git-creds"
git clone https://${GIT_USERNAME}:${GIT_PAT}@${GIT_REPO_URL}

/usr/sbin/sshd -D