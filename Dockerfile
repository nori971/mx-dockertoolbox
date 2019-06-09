FROM alpine:latest

MAINTAINER Cédric Stanislas <nori971@gmail.com>

LABEL Description="DevOps Tooling environnement" Version="0.1"

# Alpine-based installation
# #########################
RUN apk add --update \
  python-dev \
  py-pip \
  py-setuptools \
  ca-certificates \
  gcc \
  libffi-dev \
  openssl-dev \
  musl-dev \
  linux-headers \
  dmidecode \
  bash \
  && pip install --upgrade --no-cache-dir pip setuptools python-keystoneclient python-glanceclient python-novaclient python-openstackclient \
  && apk del gcc musl-dev linux-headers libffi-dev \
  && rm -rf /var/cache/apk/*
