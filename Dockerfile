FROM node:current-alpine
USER ROOT

RUN apk add yarn

WORKDIR /home/app

USER gitpod
ENV KOPET=yes

# Give back control
USER root

#CMD ["sh"]