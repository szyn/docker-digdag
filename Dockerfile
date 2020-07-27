FROM openjdk:8u212-jre-alpine
LABEL maintainer "szyn"

ENV DIGDAG_VERSION 0.9.42
WORKDIR /src

RUN apk add --no-cache \
      bash \
      curl \
      g++ \
      gcc \
      git \
      glib-dev \
      make \
      openssh \
      py3-pip \
      python3 \
      python3-dev \
      ruby \
      ruby-bundler \
      ruby-dev \
      ruby-json && \
    pip3 install --upgrade pip && \
    pip3 install python-dateutil && \
    curl -o /usr/local/bin/digdag --create-dirs -L "https://dl.digdag.io/digdag-${DIGDAG_VERSION}" && \
    chmod +x /usr/local/bin/digdag && \
    sed -i -e "s/bin\/ash/bin\/bash/" /etc/passwd && \
    echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bash_profile && \
    echo 'export PS1="[\[\e[1;34m\]\u\[\e[00m\]@\[\e[0;32m\]\h\[\e[00m\] \[\e[1;34m\]\W\[\e[00m\]]$ "' >> ~/.bashrc

ENTRYPOINT ["java", "-jar", "/usr/local/bin/digdag"]
