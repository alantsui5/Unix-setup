#debian cnfiguration
sudo apt-get install libgmp3-dev
sudo apt-get install ffmpeg
sudo apt-get install vim-gtk3
sudo apt-get install nodejs
sudo apt-get install sqlite
sudo apt-get install tree
sudo apt-get install yarn
sudo apt-get install gnome-mpv
sudo apt-get install firefox
sudo apt-get install file-roller

#install python
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install python3.7

#install chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update 
sudo apt-get install google-chrome-stable

#pip install
pip install pillow
pip install youtube-dl
pip install scipy
pip install scikit-image
pip install requests
pip install pylint
pip install opencv-python

#install rust
curl https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env

#install avidemux
sudo add-apt-repository ppa:ubuntuhandbook1/avidemux
sudo apt-get update
sudo apt-get install avidemux2.7-qt5 avidemux2.7-plugins-qt5

sudo apt-get install qemu-kvm libvirt-bin virtinst bridge-utils cpu-checker
kvm-ok
sudo cp /etc/network/interfaces /etc/network/interfaces.bakup-1-july-2016
##copy kvm.settings from this file to below
sudo vi /etc/network/interfaces
sudo service network-manager restart
sudo brctl show

sudo apt-get install transmission

sudo apt-get autoremove gimp gimp-plugin-registry
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt-get update
sudo apt-get install gimp

