FROM ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs mysql-client --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN mkdir /myapp
WORKDIR /myapp
ADD . /myapp

RUN bundle install
