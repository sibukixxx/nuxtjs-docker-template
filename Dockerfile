FROM node:latest

RUN mkdir -p /src
COPY ./client ./src
WORKDIR /src

RUN yarn 
RUN yarn run build
#RUN yarn run build

EXPOSE 3000
ENV HOST=0.0.0.0 
CMD ["yarn", "start"]
