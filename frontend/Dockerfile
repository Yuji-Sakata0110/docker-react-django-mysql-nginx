# Dockerfile (React)
FROM node:16-slim as build
WORKDIR /usr/src/app
COPY ./frontend/package*.json ./
COPY ./frontend/yarn.lock ./
RUN yarn install
COPY ./frontend ./
CMD yarn start
