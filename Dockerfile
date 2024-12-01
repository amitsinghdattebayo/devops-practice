FROM node:18-alpine

WORKDIR /app

# Copy package.json and package-lock.json (or npm-shrinkwrap.json) first
COPY package*.json .    

# Install dependencies
RUN npm install

# Copy the rest of the app
COPY . .

# Start the app
CMD ["npm", "start"]