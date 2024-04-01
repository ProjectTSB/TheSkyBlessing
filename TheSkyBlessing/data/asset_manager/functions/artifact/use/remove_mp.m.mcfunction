#> asset_manager:artifact/use/remove_mp
#
# MPを減少させます
#
# @input
#   as player
#   storage asset:artifact TargetItems : ItemData
#   args Index : int
# @within function asset_manager:artifact/use/.m

#> val
# @private
    #declare score_holder $Fluctuation
    #declare score_holder $Length

# 取得
    $execute store result score $Fluctuation Temporary run data get storage asset:artifact TargetItems[0].tag.TSB.Triggers[$(Index)].MPCost
# アイテム数だけ増やす
    # execute store result score $Length Temporary if data storage asset:artifact TargetItems[]
    # scoreboard players operation $Fluctuation Temporary *= $Length Temporary
# 反転して減算
    execute store result storage api: Argument.Fluctuation int 1 run scoreboard players operation $Fluctuation Temporary *= $-1 Const
    data modify storage api: Argument.DisableLog set value true
    function api:mp/fluctuation
# リセット
    scoreboard players reset $Fluctuation Temporary
    scoreboard players reset $Length Temporary
