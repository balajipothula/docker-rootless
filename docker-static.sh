#!/bin/bash

# Author      : BALAJI POTHULA <balaji.pothula@techie.com>,
# Date        : 12 August 2019,
# Description : Installing docker from static binaries.

# update package repositories.
sudo yum -y update

# prerequisite - only once.
# installing iptables.
sudo yum install -y iptables

# downloading docker static binaries.
curl -J -L https://download.docker.com/linux/static/stable/x86_64/docker-18.06.3-ce.tgz -o docker.tgz && \
tar xzf docker.tgz                                                                                    && \
rm -rf docker.tgz                                                                                     && \
echo "export PATH=$PATH:$HOME/docker" >> $HOME/.bashrc

# executing  .bashrc
source $HOME/.bashrc
