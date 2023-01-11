#!/bin/bash

# Install required packages.
apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
    tzdata \
    openssh-server \
    git && \
    rm -rf /var/lib/apt/lists/* || exit 1;

# Install go.
wget https://go.dev/dl/go1.19.5.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.19.5.linux-amd64.tar.gz
rm go1.19.5.linux-amd64.tar.gz
echo 'export PATH=$PATH:/usr/local/go/bin' >> /root/.bashrc
echo 'export PATH=$PATH:/root/go/bin' >> /root/.bashrc