#> asset:sacred_treasure/0973.call_rod_spirit/trigger/shot/4.main_2
#
# ショットが飛んでいく！
#
# @within function asset:sacred_treasure/0973.call_rod_spirit/trigger/shot/3.main

# 移動とパーティクル
    tp @s ^ ^ ^0.5
    particle minecraft:dust 0.604 0.69 0.816 0.7 ~ ~ ~ 0.1 0.1 0.1 0 1
    particle minecraft:electric_spark ~ ~ ~ 0 0 0 0 1 force @a[distance=..30]
# 正面が地形なら消滅
    execute unless block ^ ^ ^0.5 #lib:no_collision run kill @s

# モブに接触
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=Enemy,tag=!Uninterferable,dx=0,sort=nearest,limit=1] positioned ~0.5 ~0.5 ~0.5 run function asset:sacred_treasure/0973.call_rod_spirit/trigger/shot/5.hit_normal