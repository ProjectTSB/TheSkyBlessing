#> asset_manager:teleporter/tick/tp/move
#
#
#
# @input args
#   Dimension: string
#   X: Numeric
#   Y: Numeric
#   Z: Numeric
# @within function asset_manager:teleporter/tick/tp/

# TP
    $execute in $(Dimension) run tp @s $(X) $(Y) $(Z)
# VFX
    function asset_manager:teleporter/tick/vfx/teleport/from
    execute at @s run function asset_manager:teleporter/tick/vfx/teleport/to
# 盲目を消す
    effect clear @s blindness
# TP後タグ付与
    tag @s add SuppressTeleport
