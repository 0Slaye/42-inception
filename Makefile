default: up

up:
	@docker compose -f ./sources/compose.yaml up

down:
	@docker compose -f ./sources/compose.yaml down
