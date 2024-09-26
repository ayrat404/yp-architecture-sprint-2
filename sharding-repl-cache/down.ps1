docker compose down

docker volume rm sharding-repl-cache_redis_data
docker volume rm sharding-repl-cache_config-data
docker volume rm sharding-repl-cache_config-data-config
docker volume rm sharding-repl-cache_mongos-router-data
docker volume rm sharding-repl-cache_shard1_1-data
docker volume rm sharding-repl-cache_shard1_2-data
docker volume rm sharding-repl-cache_shard1_3-data
docker volume rm sharding-repl-cache_shard2_1-data
docker volume rm sharding-repl-cache_shard2_2-data
docker volume rm sharding-repl-cache_shard2_3-data
