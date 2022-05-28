run-local:
	docker-compose -f docker-compose.yml -f docker-compose.override.yml up --build

ci:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

copy-env:
	cp ./app/.env.example ./app/.env || true

tests: copy-env ci

setup-local: copy-env run-local