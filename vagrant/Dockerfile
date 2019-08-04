ARG BASE_IMAGE
FROM ${BASE_IMAGE}

RUN apt update && apt upgrade -y && \
  	apt install -y apt-transport-https build-essential ca-certificates git unzip wget

ARG VERSION

RUN wget https://releases.hashicorp.com/vagrant/${VERSION}/vagrant_${VERSION}_x86_64.deb && \
    dpkg --install vagrant_${VERSION}_x86_64.deb