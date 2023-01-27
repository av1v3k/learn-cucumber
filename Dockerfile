FROM node:18.13.0-alpine

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

RUN chmod -R 777 /home/node/app/**

#COPY --chown=node:node package.json .
#RUN npm install

#COPY --chown=node:node . .
#USER node

RUN npm init wdio .

COPY --chown=node:node . .