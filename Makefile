setup:
	npm ci

tests:
	docker-compose -f docker-compose.yaml up --abort-on-container-exit
