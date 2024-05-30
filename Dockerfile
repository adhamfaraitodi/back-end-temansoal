FROM node:alpine
RUN apk add --update npm
RUN npm install -g firebase-tools
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
ENTRYPOINT [ "npm", "run", "deploy" ]
