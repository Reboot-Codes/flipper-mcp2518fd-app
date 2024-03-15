FROM ubuntu:latest

RUN mkdir -p /opt/run

WORKDIR /opt/run

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install -y git rustup python3
