# Use official Node LTS base image
FROM node:18-alpine

WORKDIR /usr/src/app

# Copy package files
COPY app/package*.json ./

# Install dependencies
RUN if [ -f package-lock.json ]; then \
      npm ci --only=production; \
    else \
      npm install --only=production; \
    fi

# Copy app source
COPY app/ .

EXPOSE 3000
CMD ["npm", "start"]
