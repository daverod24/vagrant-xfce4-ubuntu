#!/bin/sh
# sudo apt-get update
# sudo DEBIAN_FRONTEND=noninteractive apt-get -y install evince gpicview kupfer

curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.15.0/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind


curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl