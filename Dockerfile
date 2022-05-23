FROM node:latest

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

RUN mkdir -p /home/node-app

COPY ./app /home/node-app

WORKDIR /home/node-app

CMD [ "node", "server.js" ]