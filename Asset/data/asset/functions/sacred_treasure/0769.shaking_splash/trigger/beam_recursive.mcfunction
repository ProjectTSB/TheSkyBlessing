#> asset:sacred_treasure/0769.shaking_splash/trigger/beam_recursive
#
# ビームの再帰部分の処理
#
# @within function
#   asset:sacred_treasure/0769.shaking_splash/trigger/5.beam
#   asset:sacred_treasure/0769.shaking_splash/trigger/beam_recursive

# 演出
    particle dust 0.4 1 1 1 ~ ~ ~ 0.1 0.1 0.1 0 7 normal @a
    particle dust 0.4 1 1 1 ^ ^ ^0.25 0.1 0.1 0.1 0 7 normal @a
    particle firework ~ ~ ~ 0.3 0.3 0.3 0.25 1
    particle firework ^ ^ ^0.25 0.3 0.3 0.3 0.25 1
    particle bubble ~ ~ ~ 0.1 0.1 0.1 0 2 normal @a
    particle bubble ^ ^ ^0.25 0.1 0.1 0.1 0 2 normal @a

# 当たった敵にTagを付与
    tag @e[type=#lib:living,tag=Enemy,distance=..1] add LandingTarget

# 再帰
    execute if entity @s[distance=..12] if block ^ ^ ^0.5 #lib:no_collision positioned ^ ^ ^0.5 run function asset:sacred_treasure/0769.shaking_splash/trigger/beam_recursive