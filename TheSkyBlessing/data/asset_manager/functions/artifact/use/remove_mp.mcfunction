#> asset_manager:artifact/use/remove_mp
#
# MPを減少させます
#
# @input
#   as player
#   storage asset:artifact TargetItem : ItemData

# 取得して減算
    execute store result storage api: Argument.Fluctuation double -0.01 run data get storage asset:artifact TargetItem.MPCost 100
    data modify storage api: Argument.DisableLog set value true
    function api:mp/fluctuation
