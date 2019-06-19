FROM ubuntu:19.04

ENV TMP /tmp

RUN apt-get update
RUN apt-get install -y cmake \
    build-essential \
    freeglut3-dev \
    mesa-common-dev \
    libosmesa6-dev \
    libglu1-mesa-dev \
    gawk \
    bison \
    libfreetype6-dev \
    libfontconfig1-dev \
    curl \
    wget \
    unzip
RUN curl --silent --location https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs \
    build-essential

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update
RUN apt-get install -y yarn

RUN apt-get clean
