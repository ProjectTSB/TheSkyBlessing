#> asset_manager:teleporter/tick/tp/move
#
#
#
# @within function asset_manager:teleporter/tick/tp/

# TP先へ移動
    data modify entity @s Pos set from storage asset:teleporter TargetPos
# プレイヤーを飛ばす
    execute positioned as @s run tp @p[tag=this] ~ ~ ~
    tp @p[tag=this] @p[tag=this]
# VFX
    function asset_manager:teleporter/tick/vfx/teleport/from
    execute positioned as @s run function asset_manager:teleporter/tick/vfx/teleport/to
# 盲目を消す
    effect clear @p[tag=this] blindness
# TP後タグ付与
    tag @p[tag=this] add SuppressTeleport
# 汎用entityを戻す
    tp @s 0.0 0.0 0.0