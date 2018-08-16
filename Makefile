# Makefile for Docker Nginx PHP Composer MySQL

include .env

help:
	@echo ""
	@echo "usage: make COMMAND"
	@echo ""
	@echo "Commands:"
	@echo "  composer-up         Update PHP dependencies with composer"
	@echo "  docker-start        Create and start containers"
	@echo "  docker-stop         Stop and clear all services"
	@echo "  logs                Follow log output"
	@echo "  mysql-dump          Create backup of all databases"
	@echo "  mysql-restore       Restore backup of all databases"

init:
	@$(shell cp -n $(shell pwd)/web/app/composer.json.dist $(shell pwd)/web/app/composer.json 2> /dev/null)

composer-up:
	@docker run --rm -v $(shell pwd)/web/app:/app composer update

docker-start: init
	docker-compose up -d --build

docker-stop:
	@docker-compose down -v
	@make clean

logs:
	@docker-compose logs -f