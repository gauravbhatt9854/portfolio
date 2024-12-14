# Use a specific version of Node.js as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /myuser

# Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app will run on (default for Express is 3000)
EXPOSE 3000

# Command to run the app
CMD ["npm", "start"]
