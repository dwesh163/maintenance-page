FROM node:18-alpine

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

RUN npm run build

RUN npm prune --production

RUN rm -frv !(dist|node_modules|server.js|package.json)

EXPOSE 8080

CMD ["node", "server.js"]
