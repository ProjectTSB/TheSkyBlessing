#> world_manager:nexus_loader/load/outliers/foreach
#
#
#
# @within function
#   world_manager:nexus_loader/load/outliers/
#   world_manager:nexus_loader/load/outliers/foreach

# fetch
    execute unless function world_manager:nexus_loader/load/outliers/check run data modify storage world_manager:nexus_loader UnprocessedOutliers append from storage world_manager:nexus_loader Registry[-3].Outliers[-1]
    execute if function world_manager:nexus_loader/load/outliers/check run function world_manager:nexus_loader/load/outliers/fetch

# 末尾削除
    data remove storage world_manager:nexus_loader Registry[-3].Outliers[-1]
# 要素があれば再帰
    execute if data storage world_manager:nexus_loader Registry[-3].Outliers[0] run function world_manager:nexus_loader/load/outliers/foreach
