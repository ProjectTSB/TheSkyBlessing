#> asset:sacred_treasure/0295.call_elemental_familiar/trigger/shot/3.main
#
# ショットが飛んでいく！
#
# @within function asset:sacred_treasure/0295.call_elemental_familiar/trigger/shot/2.tick

# 移動とパーティクル
    tp @s ^ ^ ^0.5
    execute if entity @s[tag=87.ShotNormal] run particle minecraft:dust 1 1 1 1 ~ ~0.5 ~ 0 0 0 0 1 force @a[distance=..30]
    execute if entity @s[tag=87.ShotNormal] run particle minecraft:end_rod ~ ~0.5 ~ 0 0 0 0 1 force @a[distance=..30]

    execute if entity @s[tag=87.ShotFire] run particle minecraft:dust 1 0.451 0 1 ~ ~0.5 ~ 0 0 0 0 1 force @a[distance=..30]
    execute if entity @s[tag=87.ShotFire] run particle minecraft:flame ~ ~0.5 ~ 0 0 0 0 1 force @a[distance=..30]

    execute if entity @s[tag=87.ShotWater] run particle minecraft:dust 0.298 0.471 0.945 1 ~ ~0.5 ~ 0 0 0 0 1 force @a[distance=..30]
    execute if entity @s[tag=87.ShotWater] run particle minecraft:scrape ~ ~0.5 ~ 0 0 0 0 1 force @a[distance=..30]
    execute if entity @s[tag=87.ShotThunder] run particle minecraft:dust 0.878 1 0.333 1 ~ ~0.5 ~ 0 0 0 0 1 force @a[distance=..30]
    execute if entity @s[tag=87.ShotThunder] run particle minecraft:wax_on ~ ~0.5 ~ 0 0 0 0 1 force @a[distance=..30]
#    particle minecraft:soul_fire_flame ~ ~0.5 ~ 0 0 0 0 1 force @a[distance=..30]

# 正面が地形なら消滅
    execute unless block ^ ^ ^0.5 #lib:no_collision run kill @s

# モブに接触
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!87.Main,tag=!Uninterferable,dx=0] positioned ~0.5 ~0.5 ~0.5 run particle minecraft:crit ~ ~ ~ 0 0 0 0.5 10
    execute if entity @s[tag=87.ShotNormal] positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,type=!player,tag=!87.Main,tag=!Uninterferable,dx=0] at @s run function asset:sacred_treasure/0295.call_elemental_familiar/trigger/shot/4.hit_normal
    execute if entity @s[tag=87.ShotFire] positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,type=!player,tag=!87.Main,tag=!Uninterferable,dx=0] at @s run function asset:sacred_treasure/0295.call_elemental_familiar/trigger/shot/4.hit_fire
    execute if entity @s[tag=87.ShotWater] positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,type=!player,tag=!87.Main,tag=!Uninterferable,dx=0] at @s run function asset:sacred_treasure/0295.call_elemental_familiar/trigger/shot/4.hit_water
    execute if entity @s[tag=87.ShotThunder] positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,type=!player,tag=!87.Main,tag=!Uninterferable,dx=0] at @s run function asset:sacred_treasure/0295.call_elemental_familiar/trigger/shot/4.hit_thunder