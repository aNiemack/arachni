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
  linux-headers
  
RUN wget https://cache.ruby-lang.org/pub/ruby/2.3/ruby-2.3.8.tar.gz ; \
  tar -xvzf ruby-2.3.8.tar.gz ; \
  cd ruby-2.3.8 ; \
  ./configure ; \
  make ; \
  make install ; \
  cd .. ; \
  gem install arachni
