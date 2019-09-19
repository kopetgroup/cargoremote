FROM node:current-alpine

RUN apk add yarn

COPY ./app /home/app
COPY ./init.sh /home/init.sh
RUN cd /home/app; yarn global add webpack webpack-dev-server; yarn install --force

WORKDIR /home/app

CMD ["sh"]