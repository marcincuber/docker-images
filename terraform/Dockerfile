ARG BASE_IMAGE
FROM ${BASE_IMAGE}

RUN apt update && apt upgrade -y && \
  	apt install -y apt-transport-https ca-certificates wget unzip

ARG TF_VERSION

RUN wget https://releases.hashicorp.com/terraform/${TF_VERSION}/terraform_${TF_VERSION}_linux_amd64.zip && \
    unzip ./terraform_${TF_VERSION}_linux_amd64.zip -d /usr/local/bin/

WORKDIR /terraform

VOLUME ["/terraform"]