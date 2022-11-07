#> asset:mob/0284.lexiel/tick/move/teleport/move_to_center
#
# 中心に向かって移動する
#
# @within function asset:mob/0284.lexiel/tick/**

# 残ってたらヤなのでマーカーを消す
    kill @e[type=marker,tag=7W.TeleportMarker,sort=nearest,limit=1]

# 移動先をセンターに設置
    execute at @e[type=marker,tag=7W.XYZ,sort=nearest,limit=1] run summon marker ~ ~ ~ {Tags:[7W.TeleportMarker,7W.MarkerInit]}

# 行動中タグ付与
    tag @s add 7W.Move