ARG BASE_IMAGE
FROM ${BASE_IMAGE}

RUN apt update && apt upgrade -y && \
  	apt install -y apt-transport-https ca-certificates curl jq python3-pip

RUN pip3 install awscli --upgrade --user

ARG VERSION

RUN curl -sL "https://storage.googleapis.com/kubernetes-release/release/${VERSION}/bin/linux/amd64/kubectl" -o /usr/local/bin/kubectl && \
	chmod +x /usr/local/bin/kubectl
