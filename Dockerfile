FROM node:18-alpine

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

RUN npm run build

RUN npm prune --production

RUN find . -type d \( -name 'dist' -o -name 'node_modules' -o -name 'server.js' -o -name 'package.json' \) -prune -o -exec rm -rf {} +

EXPOSE 8080

CMD ["node", "server.js"]
