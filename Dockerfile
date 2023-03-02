# base image for runtime support
FROM node:19-alpine
# application code
COPY . /app/
# start the application
WORKDIR /app

RUN npm ci

CMD ["node", "server.js"]
