FROM node:lts

COPY package*.json ./

RUN npm install

COPY index.js /github/workspace/index.js
RUN ["chmod", "+x", "/github/workspace/index.js"]

RUN ls
ENTRYPOINT ["node", "/github/workspace/index.js"]