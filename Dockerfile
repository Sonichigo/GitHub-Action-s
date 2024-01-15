FROM node:lts

COPY package*.json /github/workspace

RUN npm install

COPY index.js /github/workspace/index.js

RUN ["chmod", "+x", "/github/workspace/index.js"]

ENTRYPOINT ["node", "/github/workspace/index.js"]

RUN cd /github/workspace

RUN ls
