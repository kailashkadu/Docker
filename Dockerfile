FROM ruby:2.6.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /App
WORKDIR /App
ADD Gemfile /App/Gemfile
ADD Gemfile.lock /App/Gemfile.lock
RUN bundle install
ADD . /App