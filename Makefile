.DEFAULT_GOAL := help
SPEC_PATH := .

build: ## Build dev develoment
	if ! [ -f .env ];then cp .env.sample .env;fi
	docker compose build
	docker compose run --rm --no-deps app bundle install --path vendor/bundle -j 4

serve: ## Run Server
	docker compose up app

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
