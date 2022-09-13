FROM node
ARG APP_PORT
ARG WELCOME_MESSAGE
ENV APP_PORT $APP_PORT
ENV WELCOME_MESSAGE $WELCOME_MESSAGE
WORKDIR /usr/src/app

COPY package.json /usr/src/app

RUN yarn

COPY . /usr/src/app/
COPY .env.dist /usr/src/app/.env

CMD ["yarn", "start"]

