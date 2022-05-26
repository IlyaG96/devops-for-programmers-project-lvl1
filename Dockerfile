FROM node:14.18.1-slim

RUN apt-get update && apt-get install -yq make && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY ./app/package.json .
COPY ./app/package-lock.json .

RUN npm ci

COPY . .

CMD ["bash", "-c", "npm run migrate && npx fastify start -a 0.0.0.0 -l info -P app.js"]