LOGIN_CMD := "docker login $(REGISTRY)"
BASE_IMAGE ?= ubuntu:18.04

build_version:
	docker build -t $(REGISTRY):$(VERSION) --build-arg BASE_IMAGE=$(BASE_IMAGE) --build-arg VERSION=$(VERSION) .

save:
	docker save $(REGISTRY):$(VERSION) -o $(NAME)_$(VERSION).tar

load:
	docker load -i $(NAME)_$(VERSION).tar

push_version:
	docker push $(REGISTRY):$(VERSION)