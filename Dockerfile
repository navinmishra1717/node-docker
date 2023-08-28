FROM node:18-alpine 
RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

# USER node

RUN npm install

COPY --chown=node:node . .

EXPOSE 8080

CMD [ "node", "app.js" ]

# steps
# add base image
# create a directory and parent directory(if required) and change the ownership of that directory recursively to 'node' user and group 
# set the working directory
# copy package.json and package.lock.json files - copying will allow docker's caching mechanism to check if the file content is changed.
# If changed, then only the new layer will be created, otherwise the old layer will be used
# Change the user permission: Ensure that all the application files are owned by the non-root "node" user, including node_modules directory.
# Install the application dependencies
#  expose port 8080
# CMD runs the command to start the application, in this case: node app.js