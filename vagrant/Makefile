include ../default.make
NAME=vagrant
REPO_NAME=hashicorp/vagrant
VERSION=$$(curl -s "https://api.github.com/repos/hashicorp/vagrant/tags" | jq -r .[0].name | grep -Ev "beta|alpha|rc" | sed 's|v||')