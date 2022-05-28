local-tests:
	docker-compose -f docker-compose.yml up --build --abort-on-container-exit

run-local:
	docker-compose -f docker-compose.yml -f docker-compose.override.yml up --build

copy-env:
	cp ./app/.env.example ./app/.env || true

tests: copy-env local-tests

setup-local: copy-env run-local