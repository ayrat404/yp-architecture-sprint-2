docker compose down

docker volume rm mongo-sharding-repl_config-data
docker volume rm mongo-sharding-repl_config-data-config
docker volume rm mongo-sharding-repl_mongos-router-data
docker volume rm mongo-sharding-repl_shard1_1-data
docker volume rm mongo-sharding-repl_shard1_2-data
docker volume rm mongo-sharding-repl_shard1_3-data
docker volume rm mongo-sharding-repl_shard2_1-data
docker volume rm mongo-sharding-repl_shard2_2-data
docker volume rm mongo-sharding-repl_shard2_3-data