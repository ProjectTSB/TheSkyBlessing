#> asset:mob/0022.red_knight/tick/move/teleport/place_marker
#
#
#
# @within function asset:mob/0022.red_knight/tick/**

# 残ってたらヤなのでマーカーを消す
    kill @e[type=marker,tag=M.TeleportMarker,sort=nearest,limit=1]

# 移動先を設置
    summon marker ~ ~ ~ {Tags:[M.TeleportMarker,M.MarkerInit]}

# 拡散
    execute as @e[type=marker,tag=M.TeleportMarker,tag=M.MarkerInit] at @s run function lib:spread_entity/

# リセット
    tag @e[type=marker,tag=M.TeleportMarker,tag=M.MarkerInit] remove M.MarkerInit

# 行動中タグ付与
    tag @s add M.Move
    tag @s add M.TickLock