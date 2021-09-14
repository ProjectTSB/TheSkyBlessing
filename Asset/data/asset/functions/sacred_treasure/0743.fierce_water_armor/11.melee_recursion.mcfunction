#> asset:sacred_treasure/0743.fierce_water_armor/11.melee_recursion
#
#
#
# @within function asset:sacred_treasure/0743.fierce_water_armor/10.melee
# @within function asset:sacred_treasure/0743.fierce_water_armor/11.melee_recursion

# ダメージ判定
    execute if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..1.5] run function asset:sacred_treasure/0743.fierce_water_armor/12.damage

# 演出
    particle fishing ~ ~ ~ 0.2 0.2 0.2 0 5 normal @a
    particle fishing ^ ^ ^0.5 0.2 0.2 0.2 0 5 normal @a
    playsound minecraft:entity.dolphin.jump master @a ~ ~ ~ 0.25 0.5 0

# 再帰
    execute if entity @s[distance=..15] positioned ^ ^ ^1 run function asset:sacred_treasure/0743.fierce_water_armor/11.melee_recursion