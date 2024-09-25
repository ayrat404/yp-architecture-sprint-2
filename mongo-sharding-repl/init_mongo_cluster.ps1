# инициализация конфигурационного сервера для MongoDB
echo "Initializing configuration server..."
Get-Content -Path .\scripts\init_configSrv.js | docker compose exec -T configSrv mongosh  --port 27019

# инициализация 1 шарда
echo   "Initializing shard 1..."
Get-Content -Path .\scripts\init_shard1.js | docker compose exec -T shard1_1 mongosh --port 27018

# инициализация 2 шарда
echo "Initializing shard 2..."
Get-Content -Path .\scripts\init_shard2.js | docker compose exec -T shard2_1 mongosh --port 27018

echo "Waiting for router start..."
do {
    if ((docker compose exec -T mongos_router mongosh --eval "exit") -eq $false) {
        Write-Host "Router not ready, waiting..."
        Start-Sleep -Seconds 2
    }
} until ($?)

# инициализация роутера
echo "Initializing router..."
Get-Content -Path .\scripts\init_router.js | docker compose exec -T mongos_router mongosh

# наполнение данными
echo "Filling data..."
Get-Content -Path .\scripts\test_data.js | docker compose exec -T mongos_router mongosh