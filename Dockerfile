FROM ruby:2.5.3

RUN apt-get update -qq && apt-get install -y nodejs mysql-client
RUN mkdir /reservation
WORKDIR /reservation
COPY Gemfile /reservation/Gemfile
COPY Gemfile.lock /reservation/Gemfile.lock
RUN bundle install
COPY . /reservation

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
