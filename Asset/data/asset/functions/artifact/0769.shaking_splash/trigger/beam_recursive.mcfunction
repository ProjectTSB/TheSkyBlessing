#> asset:artifact/0769.shaking_splash/trigger/beam_recursive
#
# ビームの再帰部分の処理
#
# @within function
#   asset:artifact/0769.shaking_splash/trigger/5.beam
#   asset:artifact/0769.shaking_splash/trigger/beam_recursive

# 演出
    particle dust 0.6 100000000 50000000 1 ~ ~ ~ 0.1 0.1 0.1 0 3 normal @a
    particle dust 0.6 100000000 50000000 1 ^ ^ ^0.25 0.1 0.1 0.1 0 3 normal @a
    particle firework ~ ~ ~ 0.3 0.3 0.3 0.25 1
    particle firework ^ ^ ^0.25 0.3 0.3 0.3 0.25 1
    particle bubble ~ ~ ~ 0.1 0.1 0.1 0 2 normal @a
    particle bubble ^ ^ ^0.25 0.1 0.1 0.1 0 2 normal @a

# 当たった敵にTagを付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[type=#lib:living,tag=Enemy,dx=0] add LandingTarget

# ついでに火を消す おまけで範囲を広くしておく
    execute if predicate world_manager:area/02.islands run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace fire

# 再帰
    execute if entity @s[distance=..12] if block ^ ^ ^0.5 #lib:no_collision positioned ^ ^ ^0.5 run function asset:artifact/0769.shaking_splash/trigger/beam_recursive