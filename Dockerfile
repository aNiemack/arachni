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
  libcurl
  
RUN wget https://cache.ruby-lang.org/pub/ruby/2.3/ruby-2.3.8.tar.gz

RUN tar -xvzf ruby-2.3.8.tar.gz

RUN cd ruby-2.3.8

RUN ./configure

RUN make

RUN make install

RUN cd ..

RUN gem install arachni
