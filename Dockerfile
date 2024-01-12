FROM node:18

COPY package*.json /

RUN npm install

COPY index.js /index.js

RUN ["chmod", "+x", "index.js"]

RUN ls
RUN cd .. ; ls
RUN cd ../ ; ls

ENTRYPOINT [ "/index.js" ]