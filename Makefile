run-local:
	docker-compose -f docker-compose.yml -f docker-compose.override.yml up --build

tests:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

copy-env:
	cp ./app/.env.example ./app/.env || true

ci: copy-env tests

setup-local: copy-env run-local