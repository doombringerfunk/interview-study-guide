FROM node:8.17.0-alpine

RUN apk update && apk upgrade

WORKDIR /opt/app
COPY package*.json ./

RUN npm install
COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]
