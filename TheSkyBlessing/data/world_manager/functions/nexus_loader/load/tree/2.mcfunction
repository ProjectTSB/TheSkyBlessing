#> world_manager:nexus_loader/load/tree/2
#
#
#
# @within function world_manager:nexus_loader/load/tree/1

# オフセット追加
    data modify storage world_manager:nexus_loader Registry[-3].N[-4].N[-4].N append from storage world_manager:nexus_loader DummyCompoundsForOffset3[]

# [3]
    execute if function world_manager:nexus_loader/load/tree/2_check run function world_manager:nexus_loader/load/tree/3

# [2]
    data remove storage world_manager:nexus_loader Registry[-3].N[-4].N[-4].N[-1]
    execute if function world_manager:nexus_loader/load/tree/2_check run function world_manager:nexus_loader/load/tree/3

# [1]
    data remove storage world_manager:nexus_loader Registry[-3].N[-4].N[-4].N[-1]
    execute if function world_manager:nexus_loader/load/tree/2_check run function world_manager:nexus_loader/load/tree/3

# [0]
    data remove storage world_manager:nexus_loader Registry[-3].N[-4].N[-4].N[-1]
    execute if function world_manager:nexus_loader/load/tree/2_check run function world_manager:nexus_loader/load/tree/3

# shrink
    execute if data storage world_manager:nexus_loader {NeedsShrink2:true} run function world_manager:nexus_loader/load/tree/shrink.m {Depth:2,ParentDepth:1,Path:"Registry[-3].N[-4].N[-4]"}
