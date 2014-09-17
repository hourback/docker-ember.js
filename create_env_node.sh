#!/bin/bash

curl https://raw.githubusercontent.com/creationix/nvm/v0.16.1/install.sh | bash
source ~/.nvm/nvm.sh
nvm install 0.10
nvm use 0.10

npm install --global yo
npm install --global ember-cli
npm install --global bower
npm install --global phantomjs
npm install --global generator-ember
npm install --global grunt-mocha
