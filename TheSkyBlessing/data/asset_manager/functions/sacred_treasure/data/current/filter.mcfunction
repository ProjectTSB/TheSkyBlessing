#> asset_manager:sacred_treasure/data/current/filter
#
#
#
# @within function
#   asset_manager:sacred_treasure/data/current/get
#   asset_manager:sacred_treasure/data/current/filter

#> Private
# @private
#declare score_holder $nonIDEquals

# 比較
    data modify storage asset:sacred_treasure Temp set from storage asset:sacred_treasure TargetID
    execute store success score $nonIDEquals Temporary run data modify storage asset:sacred_treasure Temp set from storage asset:sacred_treasure HotbarItems[-1].tag.TSB.ID
# 一致してたら追加
    execute if score $nonIDEquals Temporary matches 0 run data modify storage asset:sacred_treasure TargetItems append from storage asset:sacred_treasure HotbarItems[-1]
# リセット
    scoreboard players reset $nonIDEquals Temporary
    data remove storage asset:sacred_treasure Temp
    data remove storage asset:sacred_treasure HotbarItems[-1]
# 要素が残ってたら再帰
    execute if data storage asset:sacred_treasure HotbarItems[0] run function asset_manager:sacred_treasure/data/current/filter