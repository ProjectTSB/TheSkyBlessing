#> asset_manager:artifact/data/current/filter
#
#
#
# @within function
#   asset_manager:artifact/data/current/get
#   asset_manager:artifact/data/current/filter

#> Private
# @private
#declare score_holder $nonIDEquals

# 比較
    data modify storage asset:artifact Temp set from storage asset:artifact TargetID
    execute store success score $nonIDEquals Temporary run data modify storage asset:artifact Temp set from storage asset:artifact HotbarItems[-1].components."minecraft:custom_data".TSB.ID
# 一致してたら追加
    execute if score $nonIDEquals Temporary matches 0 run data modify storage asset:artifact TargetItems append from storage asset:artifact HotbarItems[-1]
# リセット
    scoreboard players reset $nonIDEquals Temporary
    data remove storage asset:artifact Temp
    data remove storage asset:artifact HotbarItems[-1]
# 要素が残ってたら再帰
    execute if data storage asset:artifact HotbarItems[0] run function asset_manager:artifact/data/current/filter
