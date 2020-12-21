#> asset_manager:sacred_treasure/core/use/remove_mp
#
# MPを減少させます
#
# @input
#   as player
#   storage asset:sacred_treasure Item : ItemData
# @within function asset_manager:sacred_treasure/core/use/

# 取得
    execute store result score $Fluctuation Argument run data get storage asset:sacred_treasure Item.tag.TSB.MPCost
# 減算
    function player_manager:mp/fluctuation