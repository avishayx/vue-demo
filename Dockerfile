FROM node:14 AS builder
COPY . /src
WORKDIR /src
RUN npm install
RUN npm run build
