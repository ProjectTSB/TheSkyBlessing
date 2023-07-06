#> asset:artifact/0295.call_elemental_familiar/trigger/shot/3.main
#
# ショットが飛んでいく！
#
# @within function asset:artifact/0295.call_elemental_familiar/trigger/shot/2.tick

# 移動とパーティクル
    tp @s ^ ^ ^0.8

    # 火属性
        execute if entity @s[tag=87.ShotFire] run particle minecraft:dust 1 0.451 0 1 ~ ~0.5 ~ 0 0 0 0 1 force @a[distance=..30]
        execute if entity @s[tag=87.ShotFire] run particle minecraft:flame ~ ~0.5 ~ 0 0 0 0 1 force @a[distance=..30]
    # 水属性
        execute if entity @s[tag=87.ShotWater] run particle minecraft:dust 0.298 0.471 0.945 1 ~ ~0.5 ~ 0 0 0 0 1 force @a[distance=..30]
        execute if entity @s[tag=87.ShotWater] run particle minecraft:scrape ~ ~0.5 ~ 0 0 0 0 1 force @a[distance=..30]
    # 雷属性
        execute if entity @s[tag=87.ShotThunder] run particle minecraft:dust 0.878 1 0.333 1 ~ ~0.5 ~ 0 0 0 0 1 force @a[distance=..30]
        execute if entity @s[tag=87.ShotThunder] run particle minecraft:wax_on ~ ~0.5 ~ 0 0 0 0 1 force @a[distance=..30]

# 正面が地形なら消滅
    execute unless block ^ ^ ^0.8 #lib:no_collision run kill @s

# モブに接触
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=Enemy,tag=!Uninterferable,dx=0,sort=nearest,limit=1] positioned ~0.5 ~0.5 ~0.5 run function asset:artifact/0295.call_elemental_familiar/trigger/shot/4.hit