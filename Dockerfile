FROM node:8.12-slim

WORKDIR /usr/src

# Install AWS XRAY daemon
RUN apt-get update -y && \
    apt-get install zip unzip && \
    curl -o daemon.zip https://s3.dualstack.us-east-2.amazonaws.com/aws-xray-assets.us-east-2/xray-daemon/aws-xray-daemon-linux-2.x.zip && \
    unzip daemon.zip && cp xray /usr/bin/xray
