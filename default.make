LOGIN_CMD := "docker login $(REGISTRY)"
BASE_IMAGE ?= "ubuntu:18.04"
REGISTRY ?= "marcincuber"

build_version:
	docker build -t $(REGISTRY)/$(NAME):$(VERSION) --build-arg BASE_IMAGE=$(BASE_IMAGE) --build-arg VERSION=$(VERSION) --build-arg TF_VERSION=$(TF_VERSION) --build-arg PACKER_VERSION=$(PACKER_VERSION) .

save:
	docker save $(REGISTRY)/$(NAME):$(VERSION) -o $(NAME)_$(VERSION).tar

load:
	docker load -i $(NAME)_$(VERSION).tar

push_version:
	docker push $(REGISTRY)/$(NAME):$(VERSION)