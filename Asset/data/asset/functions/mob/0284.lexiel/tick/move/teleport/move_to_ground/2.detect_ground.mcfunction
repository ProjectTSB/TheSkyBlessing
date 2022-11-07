#> asset:mob/0284.lexiel/tick/move/teleport/move_to_ground/2.detect_ground
#
# 地面を見つけた
#
# @within function asset:mob/0284.lexiel/tick/move/teleport/move_to_ground/1.search_ground

# 残ってたらヤなのでマーカーを消す
    kill @e[type=marker,tag=7W.TeleportMarker,sort=nearest,limit=1]

# 移動先を設置
    summon marker ~ ~-0.5 ~ {Tags:[7W.TeleportMarker,7W.MarkerInit]}

# 行動中タグ付与
    tag @s add 7W.Move