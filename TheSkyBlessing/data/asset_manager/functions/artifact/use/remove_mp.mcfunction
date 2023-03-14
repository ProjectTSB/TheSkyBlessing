#> asset_manager:artifact/use/remove_mp
#
# MPを減少させます
#
# @input
#   as player
#   storage asset:artifact TargetItems : ItemData
# @within function asset_manager:artifact/use/

#> val
# @private
    #declare score_holder $Fluctuation
    #declare score_holder $Length

# 取得
    execute store result score $Fluctuation Lib run data get storage asset:artifact TargetItems[0].tag.TSB.MPCost
# アイテム数だけ増やす
    # execute store result score $Length Temporary if data storage asset:artifact TargetItems[]
    # scoreboard players operation $Fluctuation Lib *= $Length Temporary
# 反転して減算
    scoreboard players operation $Fluctuation Lib *= $-1 Const
    data modify storage lib: Argument.DisableLog set value true
    function lib:mp/fluctuation
# リセット
    scoreboard players reset $Length Temporary