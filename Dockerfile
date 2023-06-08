FROM node:20-alpine

RUN apk update && \
    apk upgrade && \
    apk add --no-cache openssl

WORKDIR /app

COPY package*.json ./

RUN npm install --production

COPY . .

CMD ["npm", "start"]
