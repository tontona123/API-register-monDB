# Use the official Node.js 14 image.
FROM node:14

# Create and change to the app directory.
WORKDIR /usr/src/app

# Install app dependencies.
COPY package*.json ./
RUN npm install

# Copy the rest of the application code.
COPY . .

# Bind to port 5000
EXPOSE 5000

# Run the app
CMD ["npm", "run", "dev"]
