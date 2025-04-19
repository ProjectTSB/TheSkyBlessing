#> asset:teleporter/2147483647/early_register
#
#
#
# @within tag/function asset_manager:teleporter/early_register

data modify storage asset:teleporter Teleporter[-1] append value {}

# ID (int)
    data modify storage asset:teleporter Teleporter[-1].ID set value 2147483647
# Dimension (string[minecraft:dimension])
    data modify storage asset:teleporter Teleporter[-1].Data.Dimension set value "minecraft:overworld"
# Pos ([int] @ 3)
    data modify storage asset:teleporter Teleporter[-1].Data.Pos set value [38,7,-5]
# GroupIDs ([string])
    data modify storage asset:teleporter Teleporter[-1].Data.GroupIDs set value ["example"]
# デフォルトの起動状態 ("InvisibleDeactivate" | "VisibleDeactivate" | "Activate")
    data modify storage asset:teleporter Teleporter[-1].Data.ActivationState set value "Activate"
# 色 (Optional)
    data modify storage asset:teleporter Teleporter[-1].Color set value [0,209,202]
    function asset:teleporter/common/calculate_and_insert_color_data
