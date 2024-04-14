# Use the official Node.js Docker image as the base image with version 18.18.0
FROM node:18.18.0

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json if available
COPY package*.json ./

# Install dependencies
RUN npm install

# Install the suitecloud-cli library globally using npm
RUN npm install -g suitecloud-cli --unsafe --acceptsuitecloudsdklicense --supressSuiteCloudSDKLicensePrompt

# Set the entrypoint command to suitecloud-cli
ENTRYPOINT ["suitecloud"]

# Expose the port the app runs on
EXPOSE 3000