#!/bin/bash
 
set -e
sudo apt-get update -y
sudo apt-get install openjdk-7-jdk -y 
wget https://github.com/technomancy/leiningen/raw/stable/bin/lein && sudo mv lein /usr/local/bin && sudo chmod 755 /usr/local/bin/lein
# Add ~/bin to your $PATH, it has been done if in Ubuntu 12.04
lein  # the first time it will install itself
