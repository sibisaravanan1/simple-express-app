FROM node:alpine
RUN mkdir -p /app && chown node:node /app
USER node
EXPOSE 3000
WORKDIR /app
ADD --chown=node:node . .
RUN npm install --prod
CMD [ "node", "index.js" ]
