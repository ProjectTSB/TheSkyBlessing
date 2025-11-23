#> world_manager:nexus_loader/load/tree/fetch
#
#
#
# @within function world_manager:nexus_loader/load/tree/6

# fetch
    execute store result storage world_manager:nexus_loader IsLoaded byte 1 run function world_manager:nexus_loader/load/fetch.m {TargetPath:"Registry[-3].N[-4].N[-4].N[-4].N[-4].N[-4].N[-4].N[-4]"}
# ロードに成功したら消す
    execute if data storage world_manager:nexus_loader {IsLoaded:true} run function world_manager:nexus_loader/load/tree/remove_child_and_flagged
