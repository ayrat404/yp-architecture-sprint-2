﻿rs.initiate(
    {
        _id: "shard2",
        members: [
            {_id: 0, host: "shard2_1:27018"},
            {_id: 1, host: "shard2_2:27018"},
            {_id: 2, host: "shard2_3:27018"},
        ]
    }
);