FROM node

WORKDIR /usr/src/app

COPY package.json /usr/src/app

RUN yarn

COPY . /usr/src/app/
COPY .env.dist /usr/src/app/.env

CMD ["yarn", "start"]

