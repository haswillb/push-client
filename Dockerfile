FROM ruby:2.3-alpine

RUN mkdir /app
WORKDIR /app

ADD Gemfile /app/Gemfile
RUN bundle install

ADD . /app

ENTRYPOINT ["bundle", "exec", "ruby", "client.rb"]

