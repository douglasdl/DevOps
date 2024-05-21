# Use node image
FROM node:18-slim

# Set working directory (create the folders if not exists)
WORKDIR /usr/src/app

# Copy package.json to the working directory
COPY package.json ./

# Install app dependencies
RUN yarn

# Copy the rest of your application code to the working directory
COPY . .

RUN yarn run build

EXPOSE 3000

CMD ["yarn", "run", "start"]

# 1) Build the image
# docker build -t api-rocket .

# 2) List the created image
# docker image ls api-rocket

# 3) Check the image history
# docker image history api-rocket
