FROM ubuntu:14.04
MAINTAINER Florian Dütsch <florian.duetsch@nix-wie-weg.de>
RUN apt-get update
RUN apt-get install -y wget build-essential libssl-dev libyaml-dev \
  libreadline6-dev zlib1g-dev
RUN cd /tmp && wget http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.3.tar.gz
RUN cd /tmp && tar xzf ruby-2.1.3.tar.gz
RUN cd /tmp/ruby-2.1.3 && ./configure && make && make install
RUN rm -rf /tmp/ruby-2.1.3*
RUN gem install bundler
