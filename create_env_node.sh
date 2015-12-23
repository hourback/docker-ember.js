#!/bin/sh

#curl https://raw.githubusercontent.com/creationix/nvm/v0.16.1/install.sh | bash
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
source ~/.nvm/nvm.sh
nvm install 0.11
nvm use 0.11

npm install --global yo
npm install --global ember-cli
npm install --global bower
npm install --global phantomjs
npm install --global generator-ember
npm install --global grunt-mocha
npm install --global grunt-cli
