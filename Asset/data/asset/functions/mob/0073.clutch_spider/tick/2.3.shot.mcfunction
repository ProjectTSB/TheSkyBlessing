#> asset:mob/0073.clutch_spider/tick/2.3.shot
#
#
#
# @within function
#   asset:mob/0073.clutch_spider/tick/2.1.skill
#   asset:mob/0073.clutch_spider/tick/2.3.shot

# 着弾検知
    execute if entity @a[gamemode=!spectator,distance=..2] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# 演出
    particle dust 1 1 1 1 ~ ~ ~ 0 0 0 0 6

# 着弾
    execute if entity @s[tag=Landing] run function asset:mob/0073.clutch_spider/tick/2.2.landing

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..30] run function asset:mob/0073.clutch_spider/tick/2.3.shot