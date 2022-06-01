#> asset:sacred_treasure/0973.call_rod_spirit/trigger/shot/4.main_2
#
# ショットが飛んでいく！
#
# @within function asset:sacred_treasure/0973.call_rod_spirit/trigger/shot/3.main

# 移動とパーティクル
    tp @s ^ ^ ^0.5
    particle minecraft:dust 1 1 1 0.7 ~ ~0.5 ~ 0 0 0 0 1 force @a[distance=..30]
    particle minecraft:electric_spark ~ ~0.5 ~ 0 0 0 0 1 force @a[distance=..30]

# 正面が地形なら消滅
    execute unless block ^ ^ ^0.5 #lib:no_collision run kill @s

# モブに接触
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!87.Main,tag=!Uninterferable,dx=0] positioned ~0.5 ~0.5 ~0.5 run particle minecraft:crit ~ ~ ~ 0 0 0 0.5 10
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,type=!player,tag=!87.Main,tag=!Uninterferable,dx=0] at @s run function asset:sacred_treasure/0973.call_rod_spirit/trigger/shot/5.hit_normal