FROM node:16-alpine
EXPOSE 3000
# it should use alpine package manager to install tini: 'apk add --update tini'
# RUN apk add --update tini
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json package.json
RUN npm install && npm cache clean --force
COPY . .
CMD ["node", "app.js" ]