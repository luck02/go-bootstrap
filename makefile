SHELL:=/bin/bash

.PHONY: teardown-docker
teardown-develop:
	@docker-compose down

.PHONY: develop
develop: teardown-develop
	@docker-compose up -d --build dev 
	@docker-compose exec dev dep ensure
	@docker-compose exec dev bash


