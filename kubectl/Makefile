include ../default.make
REPO_NAME=kubernetes/kubernetes
VERSION=$$(curl -s "https://api.github.com/repos/$(REPO_NAME)/releases/latest" | jq -r .tag_name | grep -Ev "beta|alpha|rc")
NAME=kubectl
