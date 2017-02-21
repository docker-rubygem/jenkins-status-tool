FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.8

RUN gem install jenkins-status-tool --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["jenkins-status-tool"]
CMD ["--help"]
