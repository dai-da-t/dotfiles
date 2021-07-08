#!/usr/bin/env bash
xhost +SI:localuser:root
sudo xkeysnail -q $HOME/.xkeysnail/config.py &
