FROM node:18

COPY package*.json ./

RUN npm install

COPY . .

CMD [ "node", "index.js" ]