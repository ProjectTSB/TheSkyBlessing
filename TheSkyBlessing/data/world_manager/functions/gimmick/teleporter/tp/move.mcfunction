#> world_manager:gimmick/teleporter/tp/move
#
#
#
# @within function world_manager:gimmick/teleporter/tp/

# TP先へ移動
    data modify entity @s Pos set from storage world_manager:gimmick TargetPos
# プレイヤーを飛ばす
    execute positioned as @s run tp @p[tag=this] ~ ~ ~
    execute as @p[tag=this] run tp @s @s
    execute positioned as @s run function world_manager:gimmick/teleporter/vfx/teleport/to
# 汎用entityを戻す
    tp @s 0.0 0.0 0.0