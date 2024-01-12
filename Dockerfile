FROM node:lts

WORKDIR /usr/src/app
COPY package*.json ./
COPY . .
RUN npm install
RUN echo "Installed and BUilt successfully"
RUN ls
ENTRYPOINT ["/entrypoint.sh"]