FROM node:latest

RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim"]

RUN mkdir -p /src
WORKDIR /src

EXPOSE 3000
ENV HOST=0.0.0.0 
