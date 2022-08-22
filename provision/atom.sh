#!/bin/sh
# sudo apt-add-repository -y ppa:webupd8team/atom
# sudo apt-get update
# sudo DEBIAN_FRONTEND=noninteractive apt-get -y install atom
# apm config set strict-ssl false
# # Generic packages
# apm install atom-beautify
# apm install editorconfig
# apm install merge-conflicts
# # JavaScript  packages
# apm install es6-javascript
# apm install language-javascript-jsx
# # Web development packages
# apm install emmet
# apm install pigments
# # Docker packages
# apm install language-docker


sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
#Then update the package cache and install the package using:

sudo apt install apt-transport-https
sudo apt update
sudo apt install code # or code-insiders
