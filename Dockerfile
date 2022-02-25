FROM alpine:3.15.0

LABEL maintainer="abdoelrachmad@gmail.com"

RUN apk add vim git wget curl rsync openssh

RUN apk add build-base libffi-dev ruby ruby-dev gcc make

RUN gem install jekyll bundler

RUN addgroup -S build-bot && adduser -S build-bot -G build-bot

USER build-bot

WORKDIR /home/build-bot/
