up:
	docker comopse up -d
build:
	docker compose build
shell:
	docker compose exec -it app bash
stop:
	docker compose stop
down:
	docker compose down --remove-orphans
logs:
	docker compose logs

