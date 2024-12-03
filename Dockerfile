# Use Node.js as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json to the working directory
COPY frontend/package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY frontend/ .

# Expose port 3000 for the React app
EXPOSE 3000

# Define the default command to run when the container starts
CMD ["npm", "start"]

