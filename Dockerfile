FROM openjdk:8u191-jre-alpine
LABEL maintainer "szyn"

ENV DIGDAG_VERSION 0.9.39
WORKDIR /src

RUN apk add --no-cache \
      curl \
      g++ \
      gcc \
      git \
      glib-dev \
      make \
      openssh \
      py-pip \
      python \
      python-dev \
      ruby \
      ruby-bundler \
      ruby-dev \
      ruby-json && \
    pip install --upgrade pip && \
    pip install python-dateutil && \
    curl -o /usr/local/bin/digdag --create-dirs -L "https://dl.digdag.io/digdag-${DIGDAG_VERSION}" && \
    chmod +x /usr/local/bin/digdag

ENTRYPOINT ["java", "-jar", "/usr/local/bin/digdag"]
