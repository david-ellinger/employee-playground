FROM node:alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
# COPY .env /usr/src/app/
COPY . /usr/src/app/

RUN npm install

EXPOSE 3000
CMD ["npm", "run", "dev"]