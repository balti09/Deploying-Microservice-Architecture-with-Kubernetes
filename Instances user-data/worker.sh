#! bin/bash
sudo su
apt-get update -y
apt-get upgrade -y
chmod 777 /etc/sysctl.conf
echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf
sysctl -p
chmod 644 /etc/sysctl.conf
apt install -y docker.io
systemctl start docker
mkdir /etc/docker
cat <<EOF | tee /etc/docker/daemon.json
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2"
}
EOF
systemctl enable docker
systemctl daemon-reload
systemctl restart docker
usermod -aG docker ubuntu
swapoff -a
systemctl restart docker
newgrp docker
apt install -y apt-transport-https ca-certificates curl softwareproperties-common

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"

apt install -y kubelet=1.25.0-00 kubeadm=1.25.0-00 kubectl=1.25.0-00
systemctl start kubelet
systemctl enable kubelet
echo "source <(kubectl completion bash)" >> ~/.bashrc
kubeadm join \
<your-master-ip>:6443 --token <your-token> --discovery-token-ca-cert-hash sha256:<your-key>