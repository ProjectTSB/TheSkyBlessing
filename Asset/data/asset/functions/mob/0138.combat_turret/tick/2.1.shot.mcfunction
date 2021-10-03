#> asset:mob/0138.combat_turret/tick/2.1.shot
#
#
#
# @within function
#   asset:mob/0138.combat_turret/tick/2.tick
#   asset:mob/0138.combat_turret/tick/2.1.shot

# 着弾検知
    execute if entity @e[type=player,gamemode=!spectator,distance=..2] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute if entity @e[type=player,gamemode=!spectator,distance=..2] run tag @e[type=player,gamemode=!spectator,distance=..2,limit=1] add LandingTarget

# 演出
    particle dust 1 1 0 1 ~ ~ ~ 1 1 1 0 6

# 着弾
    execute if entity @s[tag=Landing] run function asset:mob/0138.combat_turret/tick/2.2.damage

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..30] run function asset:mob/0138.combat_turret/tick/2.1.shot