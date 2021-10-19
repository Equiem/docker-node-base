FROM node:14

WORKDIR /usr/src
ENV NODE_ENV production

RUN useradd -m app
USER app
