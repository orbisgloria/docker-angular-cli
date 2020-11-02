FROM node:14.15.0-buster

WORKDIR /app
EXPOSE 4200

RUN chown -R node:node /app && \
    npm install --loglevel=error -g @angular/cli 

USER node
