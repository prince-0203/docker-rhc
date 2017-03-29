FROM ubuntu:16.04

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends ruby-full git-core && \
    apt-get clean -y

RUN gem install rhc && \
    gem update rhc

CMD ["bash"]
