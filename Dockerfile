FROM node:lts

COPY package*.json ./

RUN npm install

COPY index.js /index.js
RUN ["chmod", "+x", "index.js"]

RUN ls
ENTRYPOINT ["node", "/index.js"]