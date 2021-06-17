FROM node:14-alpine

ARG REACT_APP_BACKEND_URL
ENV REACT_APP_BACKEND_URL=$REACT_APP_BACKEND_URL

RUN adduser -D appuser && mkdir /home/appuser/app/
WORKDIR /home/appuser/app/
COPY . .

RUN npm install -g serve && \
    npm install && \
    npm run build

USER appuser
