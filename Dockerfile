FROM node:lts

WORKDIR /usr/src/app
COPY package*.json ./

RUN npm install

COPY . .
RUN ["chmod", "+x", "index.js"]

RUN ls
ENTRYPOINT ["node", "index.js"]