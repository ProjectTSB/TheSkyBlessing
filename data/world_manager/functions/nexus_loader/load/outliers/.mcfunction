#> world_manager:nexus_loader/load/outliers/
#
#
#
# @within function world_manager:nexus_loader/load/

function world_manager:nexus_loader/load/outliers/foreach
data modify storage world_manager:nexus_loader Registry[-3].Outliers set from storage world_manager:nexus_loader UnprocessedOutliers
data remove storage world_manager:nexus_loader UnprocessedOutliers
