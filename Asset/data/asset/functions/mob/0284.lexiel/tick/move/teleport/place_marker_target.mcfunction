#> asset:mob/0284.lexiel/tick/move/teleport/place_marker_target
#
#
#
# @within function asset:mob/0284.lexiel/tick/**

# 残ってたらヤなのでマーカーを消す
    kill @e[type=marker,tag=7W.TeleportMarker,sort=nearest,limit=1]

# 移動先を設置、プレイヤーを狙う
    execute at @r run summon marker ~ ~ ~ {Tags:[7W.TeleportMarker,7W.MarkerInit]}

# 速度設定
    #scoreboard players set @s 7W.Speed 10

# 行動中タグ付与
    tag @s add 7W.Move