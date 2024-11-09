#!/bin/bash

# инициализация конфигурационного сервера для MongoDB
echo "Initializing configuration server..."
docker compose exec -T configSrv mongosh  --port 27019 < ./scripts/init_configSrv.js

# инициализация 1 шарда
echo   "Initializing shard 1..."
docker compose exec -T shard1_1 mongosh --port 27018 < ./scripts/init_shard1.js

# инициализация 2 шарда
echo "Initializing shard 2..."
docker compose exec -T shard2_1 mongosh --port 27018 < ./scripts/init_shard2.js

# Ожидаем когда стартанет роутер 
echo "Waiting for router start..."
until docker compose exec -T mongos_router mongosh --eval "exit"
do
  echo "Router not ready, waiting..."
  sleep 2s   
done

# инициализация роутера
echo "Initializing router..."
docker compose exec -T mongos_router mongosh < ./scripts/init_router.js

# наполнение данными
echo "Filling data..."
docker compose exec -T mongos_router mongosh < ./scripts/test_data.js