FROM derflo/ruby:2.1.3
MAINTAINER Florian Dütsch <florian.duetsch@nix-wie-weg.de>
ADD views/index.haml /app/views/index.haml
ADD app.rb /app/
ADD config.ru /app/
ADD Gemfile /app/
ADD Gemfile.lock /app/
WORKDIR /app
RUN bundle install
