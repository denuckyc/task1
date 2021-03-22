FROM ruby:2.6.5-alpine

ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    apk add -u --no-cache openssl --repository=http://dl-cdn.alpinelinux.org/alpine/edge/main && \
    apk add --update tzdata && \
    apk add --no-cache git openssh-client ca-certificates build-base less icu-libs postgresql-dev postgresql-client yarn && \
    mkdir /app
WORKDIR /app

COPY Gemfile* ./
COPY .env ./.env

RUN gem install bundler --version 2.1.4 --force && \
    bundle install --jobs 4 --retry 4

