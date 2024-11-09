rs.initiate(
    {
        _id: "shard1",
        members: [
            {_id: 0, host: "shard1_1:27018"},
            {_id: 1, host: "shard1_2:27018"},
            {_id: 2, host: "shard1_3:27018"},
        ]
    }
);
