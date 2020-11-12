#> asset_manager:sacred_treasures/core/use/remove_mp
#
# MPを減少させます
#
# @input
#   as player
#   storage asset:sacred_treasure Item : ItemData
# @within function asset_manager:sacred_treasures/core/use/

#> Private
# @private
    #declare score_holder $MPCost

# 取得
    execute store result score $MPCost Temporary run data get storage asset:sacred_treasure Item.tag.TSB.MPCost
# 減算
    scoreboard players operation @s MP -= $MPCost Temporary
    execute if score @s MP matches ..-1 run scoreboard players set @s MP 0
# リセット
    scoreboard players reset $MPCost Temporary