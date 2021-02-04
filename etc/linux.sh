#!/bin/sh

sudo apt update

sudo apt install build-essential
sudo apt install zsh powerline fonts-powerline
sudo apt install git
sudo apt install curl

chsh -s /bin/zsh