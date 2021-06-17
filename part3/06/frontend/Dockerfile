FROM node:14-alpine as build-stage

ARG REACT_APP_BACKEND_URL
ENV REACT_APP_BACKEND_URL=$REACT_APP_BACKEND_URL

RUN adduser -D appuser && mkdir /home/appuser/app/
WORKDIR /home/appuser/app/
COPY . .

RUN npm install && \
    npm run build

FROM node:14-alpine

RUN npm install -g serve && \
    adduser -D appuser && \
    mkdir /home/appuser/app/
WORKDIR /home/appuser/app/
COPY --from=build-stage /home/appuser/app/ /home/appuser/app/

USER appuser
