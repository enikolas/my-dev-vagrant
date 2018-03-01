#!/bin/bash

echo "**********************************************"
echo "Setup NVM and NodeJS"
echo "**********************************************"

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
export NVM_DIR="/home/vagrant/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install 'lts/*'
