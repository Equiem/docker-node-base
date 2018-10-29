FROM node:8.12-jessie

WORKDIR /usr/src
ENV NODE_ENV production

# Install AWS XRAY daemon
COPY --from=equiem/xray /usr/bin/xray /usr/bin/xray

RUN useradd -m app
USER app
