#> world_manager:nexus_loader/load/tree/6
#
#
#
# @within function world_manager:nexus_loader/load/tree/5

# オフセット追加
    data modify storage world_manager:nexus_loader Registry[-3].N[-4].N[-4].N[-4].N[-4].N[-4].N[-4].N append from storage world_manager:nexus_loader DummyCompoundsForOffset3[]

# [3]
    execute if function world_manager:nexus_loader/load/tree/6_check run function world_manager:nexus_loader/load/tree/fetch

# [2]
    data remove storage world_manager:nexus_loader Registry[-3].N[-4].N[-4].N[-4].N[-4].N[-4].N[-4].N[-1]
    execute if function world_manager:nexus_loader/load/tree/6_check run function world_manager:nexus_loader/load/tree/fetch

# [1]
    data remove storage world_manager:nexus_loader Registry[-3].N[-4].N[-4].N[-4].N[-4].N[-4].N[-4].N[-1]
    execute if function world_manager:nexus_loader/load/tree/6_check run function world_manager:nexus_loader/load/tree/fetch

# [0]
    data remove storage world_manager:nexus_loader Registry[-3].N[-4].N[-4].N[-4].N[-4].N[-4].N[-4].N[-1]
    execute if function world_manager:nexus_loader/load/tree/6_check run function world_manager:nexus_loader/load/tree/fetch

# shrink
    execute if data storage world_manager:nexus_loader {NeedsShrink6:true} run function world_manager:nexus_loader/load/tree/shrink.m {Depth:6,ParentDepth:5,Path:"Registry[-3].N[-4].N[-4].N[-4].N[-4].N[-4].N[-4]"}
