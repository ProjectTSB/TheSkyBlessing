#> asset_manager:sacred_treasure/core/use/remove_mp
#
# MPを減少させます
#
# @input
#   as player
#   storage asset:sacred_treasure Item : ItemData
# @within function asset_manager:sacred_treasure/core/use/

# 取得
    execute store result score $Fluctuation Lib run data get storage asset:sacred_treasure Item.tag.TSB.MPCost
# 反転して減算
    scoreboard players operation $Fluctuation Lib *= $-1 Const
    function player_manager:mp/fluctuation