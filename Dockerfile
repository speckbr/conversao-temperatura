FROM docker.io/library/node:14-alpine

WORKDIR /app

COPY ./src/package*.json /app

RUN npm install

COPY ./src/ /app

EXPOSE 8080

ENTRYPOINT [ "node", "server.js" ]
