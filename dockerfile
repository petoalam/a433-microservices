# Use the official Node.js 18 image based on Alpine Linux
FROM node:18-alpine

# Set the working directory inside the container to /src
WORKDIR /src

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Set the environment variable NODE_ENV to production
ENV NODE_ENV=production

# Run npm ci to install production dependencies. This is similar to npm install, but more optimized for production use.
RUN npm ci

# Copy all JavaScript files in the current directory to the working directory
COPY ./*.js ./

# Copy the .env file to the working directory
COPY ./.env ./

# Specify the default command to run when the container starts. In this case, it's "npm start"
CMD ["npm", "start"]