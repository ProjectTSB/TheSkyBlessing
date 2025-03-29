#> asset_manager:teleporter/tick/tp/move.m
#
#
#
# @input args
#   Dimension: string
#   X: Numeric
#   Y: Numeric
#   Z: Numeric
# @within function asset_manager:teleporter/tick/active

# TP
    $execute in $(Dimension) run tp @s $(X) $(Y) $(Z)
# 地面がなかったら作ってあげる
    execute at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 glass replace #lib:air
# VFX
    function asset_manager:teleporter/tick/vfx/teleport/from
    execute at @s run function asset_manager:teleporter/tick/vfx/teleport/to
# 盲目を消す
    effect clear @s blindness
# TP後タグ付与
    tag @s add SuppressTeleport
