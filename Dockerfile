FROM node:alpine
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser
EXPOSE 3000
WORKDIR /app
ADD --chown=appuser:appgroup . .
RUN npm install --prod
CMD [ "npm", "start" ]
