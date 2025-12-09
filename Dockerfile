# Base image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy files
COPY package*.json ./
COPY index.js ./

# Install dependencies (none for now)
RUN npm install

# Expose port
EXPOSE 3000

# Run app
CMD ["node", "index.js"]
