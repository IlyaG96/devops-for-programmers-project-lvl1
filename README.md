# DevOps для разработчиков. Проект №1

####Учебный проект онлайн-школы [Хекслет](https://ru.hexlet.io).

Для запуска проекта установите: 
- [Docker](https://docs.docker.com/engine/install/ubuntu/)
- [Docker-Compose](https://docs.docker.com/compose/install/)
- [Make](https://askubuntu.com/questions/161104/how-do-i-install-make)

Для запуска **приложения** используйте:
```shell
make setup-local
```
или:
```shell
docker-compose -f docker-compose.yaml -f docker-compose.override.yaml up --build
```

Приложение будет доступно по адресам:
- http://localhost
- https://localhost
- http://127.0.0.1:8080

Для запуска **тестов** используйте:

```shell
make tests
```
или
```shell
docker-compose -f docker-compose.yaml up --build --abort-on-container-exit
```

### Hexlet tests and linter status:
[![Actions Status](https://github.com/IlyaG96/devops-for-programmers-project-lvl1/workflows/hexlet-check/badge.svg)](https://github.com/IlyaG96/devops-for-programmers-project-lvl1/actions)


### Custom checkout status
[![Actions Status](https://github.com/IlyaG96/devops-for-programmers-project-lvl1/workflows/push/badge.svg)](https://github.com/IlyaG96/devops-for-programmers-project-lvl1/actions)
