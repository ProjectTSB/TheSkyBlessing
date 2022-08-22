#> asset:sacred_treasure/0769.shaking_splash/trigger/beam_recursive
#
#
#
# @within function
#   asset:sacred_treasure/0769.shaking_splash/trigger/5.beam
#   asset:sacred_treasure/0769.shaking_splash/trigger/beam_recursive

# 演出
    particle dust 0.4 1 1 1 ~ ~ ~ 0.1 0.1 0.1 0 4 normal @a
    particle dust 0.4 1 1 1 ^ ^ ^0.25 0.1 0.1 0.1 0 4 normal @a
    particle dust 1 1 1 1 ~ ~ ~ 0.1 0.1 0.1 0 3 normal @a
    particle dust 1 1 1 1 ^ ^ ^0.25 0.1 0.1 0.2 0 3 normal @a
    particle bubble ~ ~ ~ 0.1 0.1 0.1 0 2 normal @a
    particle bubble ^ ^ ^0.25 0.1 0.1 0.1 0 2 normal @a

# 当たった敵にTagを付与
    tag @e[type=#lib:living,tag=Enemy,distance=..1] add LandingTarget

# 再帰
    execute if entity @s[distance=..20] if block ^ ^ ^0.5 #lib:no_collision positioned ^ ^ ^0.5 run function asset:sacred_treasure/0769.shaking_splash/trigger/beam_recursive