FROM openjdk:11-slim

RUN apt-get -y update
RUN apt-get -y install nodejs
RUN apt-get -y install npm
RUN apt-get -y install wget

#RUN #chsh -s /bin/bash
#ENV SHELL /bin/bash
ENV SHELL /bin/sh

WORKDIR /app

RUN npm install -g npm
RUN npm install -g n
RUN n v16.0.0
RUN npm update -g npm

COPY package.json ./
RUN npm install

ENTRYPOINT ["/bin/sh", "-c", "npm run watch"]

