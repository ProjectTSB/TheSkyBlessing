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
    execute store result storage api: Argument.Fluctuation float -1 run data get storage asset:artifact TargetItems[0].tag.TSB.MPCost
    data modify storage lib: Argument.DisableLog set value true
    function lib:mp/fluctuation
# リセット
    scoreboard players reset $Fluctuation Temporary
