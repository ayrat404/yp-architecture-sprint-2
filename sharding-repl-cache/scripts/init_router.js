sh.addShard( "shard1/shard1_1:27018");
sh.addShard( "shard1/shard1_2:27018");
sh.addShard( "shard1/shard1_3:27018");
sh.addShard( "shard2/shard2_1:27018");
sh.addShard( "shard2/shard2_2:27018");
sh.addShard( "shard2/shard2_3:27018");

sh.enableSharding("somedb");
sh.shardCollection("somedb.helloDoc", { "name" : "hashed" } );