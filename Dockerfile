FROM centos:centos7
MAINTAINER Emmanuel CARRE <emmanuel.b.carre@gmail.com>

RUN	yum update -y && \
	yum install -y ruby \
		rubygem \
		rubygem-json \
		rubygem-parseconfig \
		git \
		ssh \
		zip \
		unzip && \
	gem install rhc && \
	gem update rhc

CMD ["help"]