include ../default.make
NAME=hashicorp
PACKER_REPO_NAME=hashicorp/packer
PACKER_VERSION=1.4.2
TF_REPO_NAME=hashicorp/terraform
TF_VERSION=$$(curl -s "https://api.github.com/repos/$(TF_REPO_NAME)/releases/latest" | jq -r .tag_name | grep -Ev "beta|alpha|rc" | sed 's|v||')
VERSION=$(TF_VERSION)-$(PACKER_VERSION)
