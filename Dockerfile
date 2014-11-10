FROM ubuntu:14.04
 
MAINTAINER Ali Nabavi <docker@alijnabavi.info>

EXPOSE 4200 9000

RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup | bash -

RUN apt-get install -y make ruby ruby-dev git vim libfreetype6 libfontconfig1

RUN useradd -m guest
RUN echo "guest:guest" | chpasswd
RUN echo "guest ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

COPY create_env_node.sh /home/guest/create_env_node.sh
RUN chown guest:guest /home/guest/create_env_node.sh
RUN sudo -i -u guest bash /home/guest/create_env_node.sh 

COPY create_env.sh /home/guest/create_env.sh
RUN chown guest:guest /home/guest/create_env.sh
RUN sudo -i -u guest bash /home/guest/create_env.sh

# Set Node.js version to use.
RUN echo "nvm use 0.10" >> /home/guest/.bashrc

USER root

VOLUME ["/data"]

RUN echo "chown -R guest /data; su - guest; /bin/bash" >> /root/boot.sh

CMD ["bash", "/root/boot.sh"]


