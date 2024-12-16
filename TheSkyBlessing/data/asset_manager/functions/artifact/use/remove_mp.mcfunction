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

# 取得して減算
    execute store result storage api: Argument.Fluctuation double -0.01 run data get storage asset:artifact TargetItems[0].tag.TSB.MPCost 100
    data modify storage api: Argument.DisableLog set value true
    function api:mp/fluctuation
# リセット
    scoreboard players reset $Fluctuation Temporary
