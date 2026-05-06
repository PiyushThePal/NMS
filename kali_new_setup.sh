#!/bin/bash

echo "Starting..."
sleep 3s

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install golang -y
echo "# Golang paths in bashrc
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=\$GOPATH/bin:\$GOROOT/bin:\$PATH" >> ~/.zshrc
source ~/.zshrc

go install github.com/ffuf/ffuf/v2@latest
go install github.com/visma-prodsec/confused@latest
go install github.com/haccer/subjack@latest
go install github.com/tomnomnom/waybackurls@latest

mkdir ~/tools
cd ~/tools

git clone https://github.com/defparam/smuggler.git
git clone https://github.com/danielmiessler/SecLists.git
git clone https://github.com/m4ll0k/SecretFinder.git secretfinder
git clone https://github.com/GerbenJavado/LinkFinder.git
git clone https://github.com/maaaaz/webscreenshot.git

sudo pip3 install pywhat

echo "...DONE"


