FROM ubuntu:14.04
 
MAINTAINER Ali Nabavi <docker@alijnabavi.info>

EXPOSE 4200 9000

RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup | bash -

RUN apt-get install -y make nodejs ruby ruby-dev git vim libfreetype6 libfontconfig1

RUN gem install compass

RUN npm install --global yo
RUN npm install --global ember-cli
RUN npm install --global bower
RUN npm install --global phantomjs
RUN npm install --global generator-ember
RUN npm install --global grunt-mocha

RUN useradd -m guest
RUN echo "guest:guest" | chpasswd

RUN echo "guest ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# TODO: Run this as guest: "\curl -sSL https://get.rvm.io | bash"

VOLUME ["/data"]

RUN echo "chown -R guest /data; su - guest; /bin/bash" >> /root/boot.sh

CMD ["bash", "/root/boot.sh"]


