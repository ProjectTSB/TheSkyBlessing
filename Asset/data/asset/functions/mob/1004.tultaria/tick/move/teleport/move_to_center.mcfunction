#> asset:mob/1004.tultaria/tick/move/teleport/move_to_center
#
# 中心に向かって移動する
#
# @within function asset:mob/1004.tultaria/tick/**

# 残ってたらヤなのでマーカーを消す
    kill @e[type=marker,tag=RW.TeleportMarker,sort=nearest,limit=1]

# 移動先をセンターに設置
    execute at @e[type=marker,tag=RW.XYZ,sort=nearest,limit=1] run summon marker ~ ~ ~ {Tags:[RW.TeleportMarker,RW.MarkerInit]}

# 行動中タグ付与
    tag @s add RW.Move