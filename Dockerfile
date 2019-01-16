FROM alpine:latest

RUN apk update \
    apk upgrade
   
RUN apk add make \
  gzip \
  tar \
  wget \
  gcc \
  libc-dev \
  openssl-dev \
  zlib-dev \
  libcurl \
  curl \
  linux-headers

RUN curl -L https://github.com/Overbryd/docker-phantomjs-alpine/releases/download/2.11/phantomjs-alpine-x86_64.tar.bz2 | tar xj

RUN ln -s /usr/share/phantomjs/phantomjs /usr/bin/phantomjs

RUN wget https://cache.ruby-lang.org/pub/ruby/2.3/ruby-2.3.8.tar.gz ; \
  tar -xvzf ruby-2.3.8.tar.gz ; \
  cd ruby-2.3.8 ; \
  ./configure ; \
  make ; \
  make install ; \
  cd .. ; \
  gem install --no-document arachni
