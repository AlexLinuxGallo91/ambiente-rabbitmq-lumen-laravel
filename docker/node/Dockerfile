FROM node:14.19.0

# Install system dependencies
RUN apt-get update && apt-get install -y python openssl apt-utils
RUN npm install npm@8.5.2
RUN rm -rf /usr/local/lib/node_modules/npm
RUN mv node_modules/npm /usr/local/lib/node_modules/npm

# Set working directory
WORKDIR /app
