FROM node:18-alpine

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

RUN npm run build

RUN npm prune --production

RUN find . ! -name 'dist' ! -name 'node_modules' ! -name 'server.js' ! -name 'package.json' -exec rm -rf {} +

EXPOSE 8080

CMD ["node", "server.js"]
