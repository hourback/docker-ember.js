FROM node 

MAINTAINER Ali Nabavi <docker@alijnabavi.info>

EXPOSE 4200

RUN apt-get update && apt-get install -y npm node.js ruby ruby-dev git vim

RUN gem install compass

RUN npm install --global yo
RUN npm install --global ember-cli
RUN npm install --global bower
RUN npm install --global phantomjs
RUN npm install --global generator-ember
RUN npm install --global grunt-mocha

