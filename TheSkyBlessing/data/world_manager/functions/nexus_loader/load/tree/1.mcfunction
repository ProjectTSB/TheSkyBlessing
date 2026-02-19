#> world_manager:nexus_loader/load/tree/1
#
#
#
# @within function world_manager:nexus_loader/load/tree/0

# オフセット追加
    data modify storage world_manager:nexus_loader Registry[-3].N[-4].N append from storage world_manager:nexus_loader DummyCompoundsForOffset3[]

# [3]
    execute if function world_manager:nexus_loader/load/tree/1_check run function world_manager:nexus_loader/load/tree/2

# [2]
    data remove storage world_manager:nexus_loader Registry[-3].N[-4].N[-1]
    execute if function world_manager:nexus_loader/load/tree/1_check run function world_manager:nexus_loader/load/tree/2

# [1]
    data remove storage world_manager:nexus_loader Registry[-3].N[-4].N[-1]
    execute if function world_manager:nexus_loader/load/tree/1_check run function world_manager:nexus_loader/load/tree/2

# [0]
    data remove storage world_manager:nexus_loader Registry[-3].N[-4].N[-1]
    execute if function world_manager:nexus_loader/load/tree/1_check run function world_manager:nexus_loader/load/tree/2

# shrink
    execute if data storage world_manager:nexus_loader {NeedsShrink1:true} run function world_manager:nexus_loader/load/tree/shrink.m {Depth:1,ParentDepth:1,Path:"Registry[-3].N[-4]"}
