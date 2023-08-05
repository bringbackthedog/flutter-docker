FROM debian:latest

RUN apt-get update && apt-get install -y \
    bash \
    curl \
    git \
    unzip \
    npm 

RUN git clone https://github.com/flutter/flutter.git -b stable

ENV PATH $PATH:/flutter/bin

# flutter precache
# RUN flutter/bin/flutter precache

RUN flutter/bin/flutter doctor
