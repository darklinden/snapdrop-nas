FROM node:18.20.7-alpine3.21

COPY ./server /app
WORKDIR /app

# Install dependencies
RUN npm install

# Expose a port (if your application needs it)
EXPOSE 41815

# Start the application
CMD [ "node", "/app/index.js" ]