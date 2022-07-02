start:
	mkdir -p config
	touch config/config.toml
	docker-compose up -d
restart:
	 docker-compose exec gitlab-runner-container gitlab-runner restart