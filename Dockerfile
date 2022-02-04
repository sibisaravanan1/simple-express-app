FROM node:alpine
RUN addgroup -S appgroup && adduser -S appuser -G appgroup && mkdir -p /app && chown appuser:appgroup /app
USER appuser
EXPOSE 3000
WORKDIR /app
ADD --chown=appuser:appgroup . .
RUN npm install --prod
CMD [ "npm", "start" ]
