FROM ubuntu:16.04
MAINTAINER Richard Fairthorne <richard.fairthorne@hashbang.info>
SHELL ["/bin/bash", "-c"]

# BASIC PROGRAMMING TOOLS
RUN apt-get update && \
    apt-get install -y software-properties-common git build-essential \
                       libssl-dev curl && \
    curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | sh && \
    source ~/.profile && \
    nvm install 8 && \
    nvm use 8 && \
    apt-get clean
