#> asset_manager:teleporter/tick/tp/move
#
#
#
# @within function asset_manager:teleporter/tick/tp/

# TP先へ移動
    data modify entity @s Pos set from storage asset:teleporter TargetPos
# プレイヤーを飛ばす
    execute positioned as @s run tp @p[tag=this] ~ ~ ~
    execute as @p[tag=this] run tp @s @s
# VFX
    function asset_manager:teleporter/tick/vfx/teleport/from
    execute positioned as @s run function asset_manager:teleporter/tick/vfx/teleport/to
# 盲目を消す
    execute as @p[tag=this] run effect clear @s blindness
# TP後タグ付与
    execute as @p[tag=this] run tag @s add SuppressTeleport
# 汎用entityを戻す
    tp @s 0.0 0.0 0.0