#> asset:teleporter/2147483647/register
#
#
#
# @within function asset_manager:teleporter/register/register.m

execute unless loaded 38 7 -5 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 2147483647
# Dimension (string[minecraft:dimension])
    data modify storage asset:teleporter Dimension set value "minecraft:overworld"
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [38,7,-5]
# GroupIDs ([string])
    data modify storage asset:teleporter GroupIDs set value ["example"]
# デフォルトの起動状態 ("InvisibleDeactivate" | "VisibleDeactivate" | "Activate")
    data modify storage asset:teleporter ActivationState set value "Activate"
# 色 (Optional)
    data modify storage asset:teleporter Color set value [0,209,202]
