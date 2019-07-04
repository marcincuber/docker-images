ARG BASE_IMAGE
FROM ${BASE_IMAGE}

RUN apt update && apt upgrade -y && \
  	apt install -y apt-transport-https build-essential ca-certificates wget unzip

ARG VERSION

RUN wget https://releases.hashicorp.com/terraform/${VERSION}/terraform_${VERSION}_linux_amd64.zip && \
    unzip ./terraform_${VERSION}_linux_amd64.zip -d /usr/local/bin/

WORKDIR /terraform

VOLUME ["/terraform"]