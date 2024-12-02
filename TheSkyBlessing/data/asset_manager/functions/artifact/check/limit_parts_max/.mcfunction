#> asset_manager:artifact/check/limit_parts_max/
#
#
#
# @within function asset_manager:artifact/check/

#> PartsMax
# @within function asset_manager:artifact/check/limit_parts_max/**
    #declare score_holder $PartsMax
    #declare score_holder $PartsCount

# データを設定
    execute store result score $PartsMax Temporary run data get storage asset:artifact TargetItem.PartsMax
    scoreboard players set $PartsCount Temporary 0
    data modify storage asset:artifact CopiedItemList set from storage asset:artifact TargetItemList
    data modify storage asset:artifact TargetItemList set value []
# すべての要素についてチェックする
    execute if data storage asset:artifact CopiedItemList[0] run function asset_manager:artifact/check/limit_parts_max/foreach
# リセット
    scoreboard players reset $PartsMax Temporary
    scoreboard players reset $PartsCount Temporary
    data remove storage asset:artifact CopiedItemList
