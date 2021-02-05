#> asset:sacred_treasure/0295.mysterious_fairy_bottle/3.1.3.shot_main
#
# ショットが飛んでいく！
#
# @within function asset:sacred_treasure/0295.mysterious_fairy_bottle/3.1.1.shot_tick

# 移動とパーティクル
    tp @s ^ ^ ^0.5
    particle minecraft:dust 0.5 0.5 1 1 ~ ~0.5 ~ 0 0 0 0 1 force @a[distance=..30]
    particle minecraft:soul_fire_flame ~ ~0.5 ~ 0 0 0 0 1 force @a[distance=..30]

# 正面が地形なら消滅
    execute unless block ^ ^ ^0.5 #lib:no_collision run kill @s

# モブに接触
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!HurtEntity,tag=!ChuzFairy,dx=0] positioned ~0.5 ~0.5 ~0.5 run particle minecraft:crit ~ ~ ~ 0 0 0 0.5 10
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,type=!player,tag=!HurtEntity,tag=!ChuzFairy,dx=0] at @s run function asset:sacred_treasure/0295.mysterious_fairy_bottle/3.1.4.shot_hit