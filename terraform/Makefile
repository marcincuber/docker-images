include ../default.make
NAME=terraform
REPO_NAME=hashicorp/terraform
VERSION=$$(curl -s "https://api.github.com/repos/$(REPO_NAME)/releases/latest" | jq -r .tag_name | grep -Ev "beta|alpha|rc" | sed 's|v||')