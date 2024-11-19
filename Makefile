default: up

re: clean up

up:
	@docker compose -f ./sources/docker-compose.yml up --build

stop:
	@docker compose -f ./sources/docker-compose.yml stop

down:
	@docker compose -f ./sources/docker-compose.yml down

show:
	@docker ps

show-all:
	@docker ps -a

remove-volume:
	@rm -rf sources/requirements/mariadb/volume/ sources/requirements/wordpress/volume/

clean: remove-volume
	@mkdir sources/requirements/mariadb/volume
	@mkdir sources/requirements/wordpress/volume

reset:
	@docker system prune -af