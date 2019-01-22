FROM debian:latest

RUN apt-get update 

RUN DEBIAN_FRONTEND=noninteractive apt-get -y upgrade

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y \
  wget

RUN wget https://github.com/Arachni/arachni/releases/download/v1.5.1/arachni-1.5.1-0.5.12-linux-x86_64.tar.gz; \
  tar -xvzf arachni-1.5.1-0.5.12-linux-x86_64.tar.gz ; \
  cd arachni-1.5.1-0.5.12 
