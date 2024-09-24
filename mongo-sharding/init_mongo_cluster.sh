#!/bin/bash

# инициализация конфигурационного сервера для MongoDB
docker compose exec -T configSrv mongosh  --port 27017 < ./scripts/init_configSrv.js

# инициализация 1 шарда
docker compose exec -T shard1 mongosh --port 27018 < ./scripts/init_shard1.js

# инициализация 2 шарда
docker compose exec -T shard2 mongosh --port 27019 < ./scripts/init_shard2.js

# инициализация роутера
docker compose exec -T mongos_router mongosh  --port 27020 < ./scripts/init_router.js

# наполнение данными
docker compose exec -T mongos_router mongosh  --port 27020 < ./scripts/test_data.js


docker volume rm mongo-sharding_config-data
docker volume rm mongo-sharding_shard1-data
docker volume rm mongo-sharding_shard2-data
