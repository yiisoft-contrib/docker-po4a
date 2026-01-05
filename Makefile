.DEFAULT_GOAL := help

IMAGE := ghcr.io/yiisoft-contrib/po4a
TAG := 0.73

build: ## Build the docker image
	docker build -t $(IMAGE):$(TAG) .

hadolint: ## Run hadolint on the Dockerfile
	docker run --rm -i hadolint/hadolint < Dockerfile

# Output the help for each task, see https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)
