FROM node:lts

COPY index.js /index.js
RUN ["chmod", "+x", "index.js"]
RUN ls
ENTRYPOINT ["node", "/index.js"]