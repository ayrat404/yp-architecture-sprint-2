# pymongo-api

## Как запустить

Запускаем mongodb и приложение

```shell
docker compose up -d
```

Инициализация кластера:


Mac/Linux:

```shell
./init_mongo_cluster.sh
```

Windows:
```powershell
.\init_mongo_cluster.ps1
```

## Как проверить

### Если вы запускаете проект на локальной машине

Откройте в браузере http://localhost:8080

## Доступные эндпоинты

Список доступных эндпоинтов, swagger http://localhost:8080/docs