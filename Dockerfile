FROM ubuntu:latest
MAINTAINER prince (https://github.com/prince-0203)

RUN apt-get update -y && \
    apt-get install ruby-full git-core -y && \
    apt-get clean -y

RUN gem install rhc && \
    gem update rhc
