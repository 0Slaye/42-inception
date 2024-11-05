default: up

up:
	@docker compose -f ./sources/compose.yaml up

stop:
	@docker compose -f ./sources/compose.yaml stop

down:
	@docker compose -f ./sources/compose.yaml down
