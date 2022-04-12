#> asset:mob/0175.queen_bee/tick/skill_needle/3.skill_needle_shot
#
#
#
# @within function
#   asset:mob/0175.queen_bee/tick/skill_needle/2.skill_needle_ready
#   asset:mob/0175.queen_bee/tick/skill_needle/3.skill_needle_shot

# 着弾検知
    execute if entity @a[gamemode=!spectator,distance=..2] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute if entity @a[gamemode=!spectator,distance=..2] run tag @a[gamemode=!spectator,distance=..2,limit=1] add LandingTarget

# 演出
    execute if predicate lib:random_pass_per/40 run particle dust 0.086 0.282 0.102 1 ~ ~ ~ 0 0 0 0 6

# 着弾
    execute if entity @s[tag=Landing] run function asset:mob/0175.queen_bee/tick/skill_needle/4.skill_needle_landing

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..30] run function asset:mob/0175.queen_bee/tick/skill_needle/3.skill_needle_shot