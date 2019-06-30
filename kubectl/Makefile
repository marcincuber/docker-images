DOCKER_IMAGE ?= "newsuk/kubectl-cli"
DOCKER_TAG ?= "v1.12.2"

docker_build:
	@docker build \
	  --build-arg KUBE_VERSION=${DOCKER_TAG} \
	  -t $(DOCKER_IMAGE):$(DOCKER_TAG) .

docker_push:
	docker push $(DOCKER_IMAGE):$(DOCKER_TAG)

test:
	docker run $(DOCKER_IMAGE):$(DOCKER_TAG) version --client