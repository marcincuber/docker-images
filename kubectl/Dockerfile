FROM ubuntu:18.04

RUN apt update && apt upgrade -y && \
  	apt install -y apt-transport-https ca-certificates curl

ARG KUBE_VERSION

RUN curl -sL https://storage.googleapis.com/kubernetes-release/release/${KUBE_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl && \
	chmod +x /usr/local/bin/kubectl

ENTRYPOINT ["kubectl"]
CMD ["help"]