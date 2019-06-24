FROM ubuntu:19.04

ENV TMP /tmp

RUN apt-get update
RUN apt-get install -y build-essential \
    freeglut3-dev \
    mesa-utils \
    gawk \
    bison \
    libfreetype6-dev \
    libfontconfig1-dev \
    libstdc++6 \
    cmake \
    clang \
    clang++-3.8 \
    xvfb \
    gdb \
    libglfw3-dev \
    libgles2-mesa-dev \
    libglew-dev \
    curl \
    wget \
    unzip
RUN curl --silent --location https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update
RUN apt-get install -y yarn

RUN apt-get clean
