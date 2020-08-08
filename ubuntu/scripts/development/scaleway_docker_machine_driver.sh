#!/bin/bash

curl -sL https://github.com/scaleway/docker-machine-driver-scaleway/releases/download/v1.2.1/docker-machine-driver-scaleway_1.2.1_darwin_amd64.zip -O
unzip docker-machine-driver-scaleway_1.2.1_darwin_amd64.zip

# Make it executable and copy the binary in a directory accessible with your $PATH
chmod +x docker-machine-driver-scaleway_1.2.1_darwin_amd64/docker-machine-driver-scaleway
sudo cp docker-machine-driver-scaleway_1.2.1_darwin_amd64/docker-machine-driver-scaleway /usr/local/bin/

rm -rf docker-machine-driver-scaleway_1.2.1_darwin_amd64
rm -rf docker-machine-driver-scaleway_1.2.1_darwin_amd64.zip 
