default:
	@mkdir -p /home/uwywijas/data/mariadb /home/uwywijas/data/wordpress
	@docker compose -f ./sources/docker-compose.yml up --build

fclean:
	@docker compose -f ./sources/docker-compose.yml down -v
	@rm -rf /home/uwywijas/data/mariadb/ /home/uwywijas/data/wordpress/
	@docker system prune -af