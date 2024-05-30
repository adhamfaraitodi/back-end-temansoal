# Use a lightweight Node.js image (e.g., alpine)
FROM node:alpine

# Install npm
RUN apk add --update npm

# Install Firebase CLI globally
RUN npm install -g firebase-tools

# Working directory for your application
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy your project directory
COPY . .

# Command to run your application
CMD [ "npm", "run", "deploy" ]
