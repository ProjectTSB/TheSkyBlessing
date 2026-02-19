#> world_manager:nexus_loader/load/tree/0
#
#
#
# @within function world_manager:nexus_loader/load/

# オフセット追加
    data modify storage world_manager:nexus_loader Registry[-3].N append from storage world_manager:nexus_loader DummyCompoundsForOffset3[]

# [3]
    execute if function world_manager:nexus_loader/load/tree/0_check run function world_manager:nexus_loader/load/tree/1

# [2]
    data remove storage world_manager:nexus_loader Registry[-3].N[-1]
    execute if function world_manager:nexus_loader/load/tree/0_check run function world_manager:nexus_loader/load/tree/1

# [1]
    data remove storage world_manager:nexus_loader Registry[-3].N[-1]
    execute if function world_manager:nexus_loader/load/tree/0_check run function world_manager:nexus_loader/load/tree/1

# [0]
    data remove storage world_manager:nexus_loader Registry[-3].N[-1]
    execute if function world_manager:nexus_loader/load/tree/0_check run function world_manager:nexus_loader/load/tree/1
