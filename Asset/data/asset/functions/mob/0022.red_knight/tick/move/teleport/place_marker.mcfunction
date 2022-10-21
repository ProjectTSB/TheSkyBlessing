#> asset:mob/0022.red_knight/tick/move/teleport/place_marker
#
#
#
# @within function asset:mob/0022.red_knight/tick/**

# 残ってたらヤなのでマーカーを消す
    kill @e[type=marker,tag=M.TeleportMarker,sort=nearest,limit=1]

# 移動先を設置
    summon marker ~ ~ ~ {Tags:[M.TeleportMarker,M.MarkerInit]}

# 拡散値
    execute if block ~ ~-1 ~ #lib:no_collision run data modify storage lib: Argument.Bounds set value [[4d,6d],[3d,3d],[4d,6d]]
    execute unless block ~ ~-1 ~ #lib:no_collision run data modify storage lib: Argument.Bounds set value [[4d,6d],[0d,6d],[4d,6d]]
    execute as @e[type=marker,tag=M.TeleportMarker,tag=M.MarkerInit] at @s run function lib:spread_entity/

# リセット
    tag @e[type=marker,tag=M.TeleportMarker,tag=M.MarkerInit] remove M.MarkerInit

# 行動中タグ付与
    tag @s add M.Move