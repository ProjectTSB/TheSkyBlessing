#> asset:mob/1004.tultaria/tick/skill/5.ball_attack/random_teleport
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/5.ball_attack/1.tick

# 移動先を設置
    summon marker ~ ~ ~ {Tags:[RW.TeleportMarker]}

# 拡散値
    execute if block ~ ~-1 ~ #lib:no_collision run data modify storage lib: Argument.Bounds set value [[20d,25d],[3d,3d],[20d,25d]]
    execute unless block ~ ~-1 ~ #lib:no_collision run data modify storage lib: Argument.Bounds set value [[10d,15d],[0d,6d],[10d,15d]]
    execute as @e[type=marker,tag=RW.TeleportMarker,sort=nearest,limit=1] at @s run function lib:spread_entity/

# 移動
    execute at @e[type=marker,tag=RW.TeleportMarker,sort=nearest,limit=1] run tp @s ~ ~ ~


# 残ってたらヤなのでマーカーを消す
    kill @e[type=marker,tag=RW.TeleportMarker,sort=nearest,limit=1]
