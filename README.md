# Проектная работа 2

draw.io схема в файле `diagram.drawio`

## Как запустить

Перейти в папку `sharding-repl-cache`

```shell
cd ./sharding-repl-cache
```

Запускаем mongodb и приложение

```shell
docker compose up -d
```

Инициализация кластера mongodb:


Mac/Linux:

```shell
./init_mongo_cluster.sh
```

Windows:
```powershell
.\init_mongo_cluster.ps1
```

## Как проверить

Откройте в браузере http://localhost:8080

## Доступные эндпоинты

Список доступных эндпоинтов, swagger http://localhost:8080/docs