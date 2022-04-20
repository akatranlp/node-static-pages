FROM node:16.14.0-alpine

RUN mkdir -p /app/public

WORKDIR /app
COPY package.json .
COPY package-lock.json .

RUN npm install

COPY index.js .

ENV PORT=8080

CMD ["index.js"]
