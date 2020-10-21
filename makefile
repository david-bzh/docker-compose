.PHONY = help
.DEFAULT_GOAL = help

docker-up: ## Create and start containers
	docker-compose up -d

docker-stop: ## Stop services
	docker-compose stop

docker-start: ## Start services
	docker-compose start

docker-down: ## Stop and remove containers
	docker-compose down

docker-down-v: ## Stop and remove containers and volumes
	docker-compose down -v

docker-v-ls: ## List volumes
	docker volumes ls

docker-v-rm: ## Remove volumes by --name
	docker volumes rm

docker-ps: ## List containers
	docker ps

help: ## Print help on Makefile
	@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-20s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'


