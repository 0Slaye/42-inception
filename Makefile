default: up

up:
	@docker compose -f ./sources/compose.yaml up

stop:
	@docker compose -f ./sources/compose.yaml stop

down:
	@docker compose -f ./sources/compose.yaml down

show:
	@docker ps

show-all:
	@docker ps -a

clear:
	@docker ps -aq | sudo xargs -r docker rm -f
