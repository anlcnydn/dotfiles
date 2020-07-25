#!/bin/bash

echo "Installing nodejs..."

sudo bash -c "$(wget -O- https://deb.nodesource.com/setup_12.x)"

sudo apt install nodejs -y

node -v

npm -v
