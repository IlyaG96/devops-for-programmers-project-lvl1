tests:
	docker-compose -f docker-compose.yaml up --abort-on-container-exit

setup-local:
	docker-compose -f docker-compose.yaml -f docker-compose.override.yaml up --abort-on-container-exit