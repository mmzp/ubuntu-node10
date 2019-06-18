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
    curl
RUN curl --silent --location https://deb.nodesource.com/setup_10.x | sudo bash -
RUN apt-get install -y nodejs \
    build-essential

# Install the latest version of Yarn
RUN curl -SL https://yarnpkg.com/latest.tar.gz -o $TMP/latest.tar.gz \
    && cd $TMP/ && tar -zxf latest.tar.gz && rm latest.tar.gz \
    && mv $TMP/dist /opt/yarn \
    && ln -sf /opt/yarn/bin/yarn /usr/bin/yarn

RUN apt-get clean
