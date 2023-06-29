#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get -y install --no-install-recommends fish wget unzip neovim yq jq

wget https://github.com/ogham/exa/releases/download/v0.10.1/exa-linux-x86_64-v0.10.1.zip
sudo unzip exa-linux-x86_64-v0.10.1.zip -d $HOME/.local

sh -c "$(curl -fsSL https://starship.rs/install.sh)"

cp -fr ./.config/fish $HOME/.config/
cp -fr ./.themes $HOME/
cp -f ./.gitconfig $HOME/

cp $HOME/.local/completions/exa.fish $HOME/.config/fish/completions/exa.fish
