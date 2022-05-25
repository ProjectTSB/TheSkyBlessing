#> asset:mob/0262.frestchika/tick/4.gun/4.shot
#
#
#
# @within function
#       asset:mob/0262.frestchika/tick/4.gun/3.ready
#       asset:mob/0262.frestchika/tick/4.gun/4.shot

# 着弾検知
    execute if entity @a[gamemode=!spectator,distance=..2] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute if entity @a[gamemode=!spectator,distance=..2] run tag @p[gamemode=!spectator,distance=..2] add LandingTarget

# 演出
    particle dust 0 0.733 1 0.5 ~ ~ ~ 0 0 0 0 6

# 着弾
    execute if entity @s[tag=Landing] run function asset:mob/0262.frestchika/tick/4.gun/5.hit

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..30] run function asset:mob/0262.frestchika/tick/4.gun/4.shot