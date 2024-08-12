# Use an official Node.js runtime as the base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /edureka

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the entire project to the working directory
COPY . .

# Build the React app
RUN npm run build

# Expose the port on which the app will run
EXPOSE 3000

# Define the command to run the app
CMD ["npm", "start"]