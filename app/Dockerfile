# Use official Node LTS base image
FROM node:18-alpine

WORKDIR /usr/src/app

# copy package.json first to install dependencies
COPY app/package*.json ./
RUN npm ci --only=production

# copy app source
COPY app/ .

EXPOSE 3000
CMD ["npm", "start"]
