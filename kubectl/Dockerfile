ARG BASE_IMAGE
FROM ${BASE_IMAGE}

RUN apt update && apt upgrade -y && \
  	apt install -y apt-transport-https ca-certificates curl

ARG VERSION

RUN curl -sL https://storage.googleapis.com/kubernetes-release/release/${KUBE_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl && \
	chmod +x /usr/local/bin/kubectl

ENTRYPOINT kubectl

CMD help