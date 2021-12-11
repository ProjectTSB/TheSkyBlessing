#> asset:mob/0131.haruclaire/death/5.ice_summon
#
#
#
# @within function asset:mob/0131.haruclaire/death/4.animation_main

# 召喚
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["3N.ArmorStandIce","Object","","Uninterferable"],ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}]}
# 演出
   particle minecraft:dust 0.569 0.957 1 1 ~ ~ ~ 0.8 0.8 0.8 0.1 20 normal @a
   playsound minecraft:block.glass.break hostile @a