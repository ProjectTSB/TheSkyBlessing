#> asset:mob/0027.skull_sniper/tick/2.1.shot
#
# Mobのtick時の処理
#
# @within function
#       asset:mob/0027.skull_sniper/tick/2.tick
#       asset:mob/0027.skull_sniper/tick/2.1.shot
# 着弾検知
    execute if entity @p[gamemode=!spectator,distance=..2] run tag @s add Landing
    execute unless block ^ ^ ^1 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute if entity @p[gamemode=!spectator,distance=..2] run tag @p[gamemode=!spectator,distance=..2] add LandingTarget

# 演出
    particle minecraft:dust 0.145 0.18 0.153 0.75 ~ ~ ~ 0 0 0 0 1

# 着弾
    execute if entity @s[tag=Landing] run function asset:mob/0027.skull_sniper/tick/2.2.hit

# 再起
    execute positioned ^ ^ ^1 if entity @s[tag=!Landing,distance=..30] run function asset:mob/0027.skull_sniper/tick/2.1.shot