FROM node:14

RUN npm install -g serve

RUN useradd -m appuser
USER appuser
RUN mkdir /home/appuser/app/
WORKDIR /home/appuser/app/
COPY . .

ARG REACT_APP_BACKEND_URL
ENV REACT_APP_BACKEND_URL=$REACT_APP_BACKEND_URL

RUN npm install
RUN npm run build
