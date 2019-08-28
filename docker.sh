

sudo yum install -y iptables
sudo modprobe ip_tables

curl -sSL https://get.docker.com/rootless | sh

export PATH=$PATH:/home/ec2-user/bin
export DOCKER_HOST=unix:///run/user/1000/docker.sock

systemctl --user start docker
