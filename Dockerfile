FROM node:16

COPY package*.json ./

RUN npm ci 

ARG PORT=3000

ENV PORT=$PORT

COPY . .

EXPOSE $PORT
CMD [ "node", "src/index.js" ]
