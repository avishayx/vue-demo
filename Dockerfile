FROM node:14 AS builder
#RUN mkdir /usr/src/app
COPY src /usr/src/app/src
COPY public /usr/src/app/public
COPY package.json /usr/src/app/

WORKDIR /usr/src/app/



# install and cache app dependencies

RUN npm install
RUN npm install -g @vue/cli
# start app
CMD ["npm", "run", "serve"]
