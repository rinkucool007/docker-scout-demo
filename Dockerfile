# Use an official Node.js image as a base
FROM node:16

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

# Expose the application port
EXPOSE 8080

# Start the app
CMD ["node", "src/app.js"]
