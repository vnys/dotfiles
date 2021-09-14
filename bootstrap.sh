export DEBIAN_FRONTEND=noninteractive

sudo apt-get update
sudo apt-get -y install --no-install-recommends fish wget unzip

# Install Jetbrains Mono font (no effect on ChromeOS)
wget https://download.jetbrains.com/fonts/JetBrainsMono-2.001.zip
sudo unzip JetBrainsMono-2.001.zip -d /usr/share/fonts
sudo fc-cache -f -v
