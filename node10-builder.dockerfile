FROM ubuntu:bionic

RUN apt-get update && apt-get install -y curl wget git apt-transport-https unzip apt-utils ca-certificates software-properties-common python vim build-essential
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get update && apt-get install -y nodejs yarn
RUN mkdir /workspace
WORKDIR /workspace
ENTRYPOINT ["/bin/sleep", "300"]
