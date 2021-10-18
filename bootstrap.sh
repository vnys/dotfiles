#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

sudo apt-get update
sudo apt-get -y install --no-install-recommends fish wget unzip

wget https://github.com/ogham/exa/releases/download/v0.10.1/exa-linux-x86_64-v0.10.1.zip
sudo unzip exa-linux-x86_64-v0.10.1.zip -d $HOME/.local

cp -fr ./.config/fish $HOME/.config/
cp -fr ./.themes $HOME/
cp -f ./.gitconfig $HOME/

# Install Jetbrains Mono font (no effect on ChromeOS)
# wget https://download.jetbrains.com/fonts/JetBrainsMono-2.001.zip
# sudo unzip JetBrainsMono-2.001.zip -d /usr/share/fonts
# sudo fc-cache -f -v

cp $HOME/.local/completions/exa.fish $HOME/.config/fish/completions/exa.fish
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install pure-fish/pure
source
