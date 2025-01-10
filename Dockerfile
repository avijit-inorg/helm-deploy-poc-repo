# Use the official Node.js image from Docker Hub
FROM node:16-slim

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json
COPY package*.json ./

# Install the app dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the application on port 3000
EXPOSE 3000

# Command to run the app
CMD ["node", "index.js"]
