# инициализация конфигурационного сервера для MongoDB
Get-Content -Path .\scripts\init_configSrv.js | docker compose exec -T configSrv mongosh  --port 27017

# инициализация 1 шарда
Get-Content -Path .\scripts\init_shard1.js | docker compose exec -T shard1 mongosh --port 27018

# инициализация 2 шарда
Get-Content -Path .\scripts\init_shard2.js | docker compose exec -T shard2 mongosh --port 27019

# инициализация роутера
Get-Content -Path .\scripts\init_router.js | docker compose exec -T mongos_router mongosh  --port 27020

# наполнение данными
Get-Content -Path .\scripts\test_data.js | docker compose exec -T mongos_router mongosh  --port 27020