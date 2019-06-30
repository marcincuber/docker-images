LOGIN_CMD := "docker login $(REGISTRY)"

build_version:
	docker build -t $(REGISTRY):$(VERSION) --build-arg BASE_IMAGE=$(BASE_IMAGE) --build-arg VERSION=$(VERSION) .
# build_version:
# 	docker build -t $(REGISTRY)/$(NAME):$(CURRENT_VERSION) --build-arg IMAGE=$(IMAGE) .

# save:
# 	docker save $(REGISTRY)/$(NAME):$(CURRENT_VERSION) -o $(NAME)_$(CURRENT_VERSION).tar
# 	docker save $(REGISTRY)/$(NAME):latest -o $(NAME)_latest.tar

# load:
# 	docker load -i $(NAME)_$(CURRENT_VERSION).tar
# 	docker load -i $(NAME)_latest.tar

# latest: build_version
# 	docker tag $(REGISTRY)/$(NAME):$(CURRENT_VERSION) $(REGISTRY)/$(NAME):latest

# push_version:
# 	image-version-push $(REGISTRY)/$(NAME):$(CURRENT_VERSION)

# push: push_version
# 	docker push $(REGISTRY)/$(NAME):latest