FROM node:current-alpine AS app

WORKDIR /app

COPY . .

EXPOSE 8080

ENTRYPOINT ["node", "server.js"]