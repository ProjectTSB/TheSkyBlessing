#> asset:mob/0155.immorality/tick/2.2.shot
#
# 発砲します
#
# @within function
#   asset:mob/0155.immorality/tick/2.1.ready
#   asset:mob/0155.immorality/tick/2.2.shot

# 着弾検知
    execute if entity @a[gamemode=!spectator,distance=..2] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute if entity @a[gamemode=!spectator,distance=..2] run tag @p[gamemode=!spectator,distance=..2] add LandingTarget

# 演出
    particle dust 0.357 0 0 1 ~ ~ ~ 0 0 0 0 6
    particle dust 0.357 0 0 1 ~ ~ ~ 0.2 0.2 0.2 0 6

# 着弾
    execute if entity @s[tag=Landing] run function asset:mob/0155.immorality/tick/2.3.damage

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..20] run function asset:mob/0155.immorality/tick/2.2.shot