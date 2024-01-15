FROM node:lts
COPY package*.json ./
RUN npm ci
COPY index.js ./index.js
RUN ["chmod", "+x", "index.js"]
RUN ls
ENTRYPOINT ["node", "/index.js"]