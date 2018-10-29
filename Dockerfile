FROM node:8.12-jessie

WORKDIR /usr/src
RUN npm install -g npm@6.4.1
ENV NODE_ENV production

# Install AWS XRAY daemon
COPY --from=equiem/xray /usr/bin/xray /usr/bin/xray

RUN useradd -m app
USER app
