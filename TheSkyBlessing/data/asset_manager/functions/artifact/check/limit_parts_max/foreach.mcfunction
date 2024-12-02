#> asset_manager:artifact/check/limit_parts_max/foreach
#
#
#
# @within function
#   asset_manager:artifact/check/limit_parts_max/
#   asset_manager:artifact/check/limit_parts_max/foreach

# 条件を満たしていれば追加
    execute if score $PartsCount Temporary < $PartsMax Temporary run data modify storage asset:artifact TargetItemList append from storage asset:artifact CopiedItemList[-1]
    execute if score $PartsCount Temporary < $PartsMax Temporary run scoreboard players add $PartsCount Temporary 1
# リセット
    data remove storage asset:artifact CopiedItemList[-1]
# ループ
    execute if data storage asset:artifact CopiedItemList[0] run function asset_manager:artifact/check/limit_parts_max/foreach
