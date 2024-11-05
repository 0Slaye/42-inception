default: up

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

clean:
	@docker ps -aq | sudo xargs -r docker rm -f

reset:
	docker stop $(docker ps -qa); docker rm $(docker ps -qa); docker rmi -f $(docker images -qa); docker volume rm $(docker volume ls -q); docker network rm $(docker network ls -q) 2>/dev/null