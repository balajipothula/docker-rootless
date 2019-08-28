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

# downloading docker rootless shell script and running.
curl -sSL https://get.docker.com/rootless | sh

# setting docker bin path.
export PATH=$PATH:/home/ec2-user/bin
# setting docker host.
export DOCKER_HOST=unix:///run/user/1000/docker.sock

# starting docker with out root privilage.
systemctl --user start docker
