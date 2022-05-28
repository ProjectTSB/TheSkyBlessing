#> asset:mob/0046.clock_of_despair/tick/skill/common/beam/beam_loop
#
#
#
# @within function
#       asset:mob/0046.clock_of_despair/tick/skill/common/beam/beam_tick
#       asset:mob/0046.clock_of_despair/tick/skill/common/beam/beam_loop

# 着弾検知
    execute if entity @p[distance=..1] run tag @s add Landing
    execute unless block ^ ^ ^1 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute if entity @p[distance=..1] run tag @p[distance=..1] add LandingTarget

# 演出
    particle minecraft:dust 1 1 1 1 ~ ~ ~ 0.1 0.1 0.1 0 1
    particle minecraft:electric_spark ~ ~ ~ 0.15 0.15 0.15 0.1 2
    execute if predicate lib:random_pass_per/5 run particle minecraft:end_rod ~ ~ ~ 0.15 0.15 0.15 0 1
    execute if predicate lib:random_pass_per/25 run particle minecraft:glow ~ ~ ~ 0.15 0.15 0.15 0 1
# 着弾
    execute if entity @s[tag=Landing] run function asset:mob/0046.clock_of_despair/tick/skill/common/beam/beam_damage

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..30] run function asset:mob/0046.clock_of_despair/tick/skill/common/beam/beam_loop