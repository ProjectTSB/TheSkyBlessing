#> asset:mob/1004.tultaria/tick/move/teleport/move_to_ground/2.detect_ground
#
# 地面を見つけた
#
# @within function asset:mob/1004.tultaria/tick/move/teleport/move_to_ground/1.search_ground

# 残ってたらヤなのでマーカーを消す
    kill @e[type=marker,tag=RW.TeleportMarker,sort=nearest,limit=1]

# 移動先を設置
    summon marker ~ ~-1.5 ~ {Tags:[RW.TeleportMarker,RW.MarkerInit]}

# 行動中タグ付与
    tag @s add RW.Move