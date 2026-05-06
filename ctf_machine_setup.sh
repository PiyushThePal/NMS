#!/bin/bash

echo "Starting..."

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install golang -y
echo "# Golang paths in bashrc
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=\$GOPATH/bin:\$GOROOT/bin:\$PATH" >> ~/.zshrc
source ~/.zshrc

echo "Installing CTF Tools"
sleep 2s

mkdir ~/tools
cd ~/tools

-----------------------------------
echo "Installing Stegnography tools"

wget http://www.caesum.com/handbook/Stegsolve.jar -O stegsolve.jar ; chmod +x stegsolve.jar
wget https://code.soundsoftware.ac.uk/attachments/download/2812/SonicVisualiser-4.4-x86_64.AppImage ; chmod +x SonicVisualiser-4.4-x86_64.AppImage

------------------------------------
echo "Installing Cryptography tools"

git clone https://github.com/zweisamkeit/RSHack.git

-------------------------------------------
echo "Installing Reverse-Engineering tools"

sudo apt install gdb -y
wget https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_10.0.4_build/ghidra_10.0.4_PUBLIC_20210928.zip ; unzip ghidra_10.0.4_PUBLIC_20210928.zip ; rm ghidra_10.0.4_PUBLIC_20210928.zip
git clone https://github.com/radareorg/radare2 ; cd radare2 ; sys/install.sh

---------------------------
echo "Installing Web tools"

go install github.com/ffuf/ffuf/v2@latest
git clone https://github.com/danielmiessler/SecLists.git

---------------
#sudo apt-get install exiftool -y

echo "

--> Stegnography <--
1. Stegsolve.jar
2. https://stylesuxx.github.io/steganography  --> Decode Images
3. Sonic Visualiser  --> Audio file visualization

--> Cryptography <--
1. RSHack --> Solve most types of rsa crypto
2. factordb.com --> Find factors of value N
3. https://hashtoolkit.com/decrypt-md5-hash  --> Good MD5 Decryption tool

--> Reverse Engineering <--
1. gdb
2. ghidra
3. radare2

--> Web <--
1. ffuf  --> Fuzzing
2. Seclist

" > ~/tools-list.txt

echo "...Done"
