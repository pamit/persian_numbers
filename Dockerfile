FROM alpine:latest

LABEL maintiner="pamit.edu@gmail.com"

RUN apk update && \
    apk upgrade && \
    apk add bash curl-dev ruby-dev build-base && \
    apk add ruby ruby-io-console ruby-bundler && \
    rm -rf /var/cache/apk/*

RUN mkdir -p /gems/persian_numbers
WORKDIR /gems/persian_numbers

COPY Gemfile Gemfile.lock ./
COPY . ./

RUN bundle install --quiet

ENTRYPOINT ["build.sh"]
