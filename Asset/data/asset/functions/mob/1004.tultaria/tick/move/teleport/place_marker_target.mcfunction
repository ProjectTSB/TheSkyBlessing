#> asset:mob/1004.tultaria/tick/move/teleport/place_marker_target
#
#
#
# @within function asset:mob/1004.tultaria/tick/**

# 残ってたらヤなのでマーカーを消す
    kill @e[type=marker,tag=RW.TeleportMarker,sort=nearest,limit=1]

# 移動先を設置、プレイヤーを狙う
    execute at @r run summon marker ~ ~ ~ {Tags:[RW.TeleportMarker,RW.MarkerInit]}

# 行動中タグ付与
    tag @s add RW.Move