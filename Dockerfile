FROM node:12.13.1-alpine3.9

WORKDIR ./equal-data-service
COPY package*.json ./
RUN npm install && npm run prebuild && npm run build
COPY ./dist .
EXPOSE 3000
CMD [ "node", "main.js" ]
