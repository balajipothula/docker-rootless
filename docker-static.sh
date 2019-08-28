#!/bin/bash

# Author      : BALAJI POTHULA <balaji.pothula@techie.com>,
# Date        : 12 August 2019,
# Description : Installing / Compiling LuaRocks from Source Code.

# update package repositories.
sudo yum -y update

# prerequisite - only once.
# installing iptables.
sudo yum install -y iptables
# enabling ip_tables kernel module.
sudo modprobe ip_tables

# downloading docker static binaries.
curl -J -L https://download.docker.com/linux/static/stable/x86_64/docker-18.06.3-ce.tgz -o docker.tgz && \
tar xzf docker.tgz                                                                                    && \
rm -rf docker.tgz                                                                                     && \
echo "export PATH=$PATH:$HOME/docker" >> $HOME/.bashrc

# executing  .bashrc
source $HOME/.bashrc
