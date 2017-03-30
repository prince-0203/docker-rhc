FROM ruby:2.4-alpine

RUN apk add --no-cache git openssh && \
    apk cache clean

RUN gem install rhc

CMD ["bash"]
