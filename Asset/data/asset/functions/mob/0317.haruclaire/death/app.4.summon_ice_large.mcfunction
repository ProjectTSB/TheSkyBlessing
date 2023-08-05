#> asset:mob/0317.haruclaire/death/app.4.summon_ice_large
#
# Mobの死亡時に実行されるfunction
#
# @within function asset:mob/0317.haruclaire/death/app.2.animation_main

# 召喚
    summon item_display ~ ~ ~ {Tags:["8T.Armorstand.Ice"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},item:{id:"minecraft:ice",Count:1b}}
    execute at @s as @e[type=item_display,tag=8T.Armorstand.Ice,distance=..0.01] run tp @s ~ ~1.8 ~ ~ 0
    summon item_display ~ ~ ~ {Tags:["8T.Armorstand.Ice"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},item:{id:"minecraft:ice",Count:1b}}
    execute at @s as @e[type=item_display,tag=8T.Armorstand.Ice,distance=..0.01] run tp @s ~ ~0.3 ~ ~ 0

# 演出
    particle minecraft:dust 0.569 0.957 1 1 ~ ~ ~ 0.8 0.8 0.8 0.1 120 normal @a
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 2
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 2
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 1
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 1
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 0
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 0
