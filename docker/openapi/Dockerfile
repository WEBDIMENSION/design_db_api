FROM openjdk:11-slim

RUN apt-get -y update
RUN apt-get -y install nodejs
RUN apt-get -y install npm

ENV SHELL /bin/sh

WORKDIR /app

COPY package.json ./

RUN npm install

ENTRYPOINT ["/bin/sh", "-c", "npm run watch"]

