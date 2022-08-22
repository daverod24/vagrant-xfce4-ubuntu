sudo apt update

sudo apt install -y build-essential linux-headers-$(uname -r)

sudo apt install virtualbox 
sudo add-apt-repository multiverse
sudo apt install virtualbox-guest-dkms virtualbox-guest-x11

#sudo reboot