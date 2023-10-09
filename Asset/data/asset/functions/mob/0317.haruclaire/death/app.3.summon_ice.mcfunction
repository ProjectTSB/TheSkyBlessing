#> asset:mob/0317.haruclaire/death/app.3.summon_ice
#
# Mobの死亡時に実行されるfunction
#
# @within function asset:mob/0317.haruclaire/death/app.2.animation_main

# 召喚
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["8T.Armorstand.Ice","Object","","Uninterferable"],ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}]}
# 演出
   particle minecraft:dust 0.569 0.957 1 1 ~ ~ ~ 0.8 0.8 0.8 0.1 20 normal @a
   playsound minecraft:block.glass.break hostile @a