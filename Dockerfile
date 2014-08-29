FROM ubuntu:14.04
 
MAINTAINER Ali Nabavi <docker@alijnabavi.info>

EXPOSE 4200

RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup | bash -

RUN apt-get install -y make nodejs ruby ruby-dev git vim

RUN gem install compass

RUN npm install --global yo
RUN npm install --global ember-cli
RUN npm install --global bower
RUN npm install --global phantomjs
RUN npm install --global generator-ember
RUN npm install --global grunt-mocha

