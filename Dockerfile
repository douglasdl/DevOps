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
