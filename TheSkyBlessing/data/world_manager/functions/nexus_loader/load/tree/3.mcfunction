#> world_manager:nexus_loader/load/tree/3
#
#
#
# @within function world_manager:nexus_loader/load/tree/2

# オフセット追加
    data modify storage world_manager:nexus_loader Registry[-3].N[-4].N[-4].N[-4].N append from storage world_manager:nexus_loader DummyCompoundsForOffset3[]

# [3]
    execute if function world_manager:nexus_loader/load/tree/3_check run function world_manager:nexus_loader/load/tree/4

# [2]
    data remove storage world_manager:nexus_loader Registry[-3].N[-4].N[-4].N[-4].N[-1]
    execute if function world_manager:nexus_loader/load/tree/3_check run function world_manager:nexus_loader/load/tree/4

# [1]
    data remove storage world_manager:nexus_loader Registry[-3].N[-4].N[-4].N[-4].N[-1]
    execute if function world_manager:nexus_loader/load/tree/3_check run function world_manager:nexus_loader/load/tree/4

# [0]
    data remove storage world_manager:nexus_loader Registry[-3].N[-4].N[-4].N[-4].N[-1]
    execute if function world_manager:nexus_loader/load/tree/3_check run function world_manager:nexus_loader/load/tree/4

# shrink
    execute if data storage world_manager:nexus_loader {NeedsShrink3:true} run function world_manager:nexus_loader/load/tree/shrink.m {Depth:3,ParentDepth:2,Path:"Registry[-3].N[-4].N[-4].N[-4]"}
