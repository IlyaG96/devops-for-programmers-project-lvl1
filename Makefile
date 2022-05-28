tests:
	docker-compose -f docker-compose.yml up --build --abort-on-container-exit

setup-local:
	docker-compose -f docker-compose.yml -f docker-compose.override.yml up --build