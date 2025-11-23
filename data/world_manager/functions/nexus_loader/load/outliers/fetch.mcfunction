#> world_manager:nexus_loader/load/outliers/fetch
#
#
#
# @within function world_manager:nexus_loader/load/outliers/foreach

# fetch
    execute store result storage world_manager:nexus_loader IsLoaded byte 1 run function world_manager:nexus_loader/load/fetch.m {TargetPath:"Registry[-3].Outliers[-1]"}
# ロードに失敗したら残す
    execute if data storage world_manager:nexus_loader {IsLoaded:false} run data modify storage world_manager:nexus_loader UnprocessedOutliers append from storage world_manager:nexus_loader Registry[-3].Outliers[-1]
