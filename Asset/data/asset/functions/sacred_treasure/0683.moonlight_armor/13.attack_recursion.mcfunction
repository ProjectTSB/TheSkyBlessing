#> asset:sacred_treasure/0683.moonlight_armor/13.attack_recursion
#
#
#
# @within function asset:sacred_treasure/0683.moonlight_armor/12.attack
# @within function asset:sacred_treasure/0683.moonlight_armor/13.attack_recursion

# 再帰暴走防止用スコア
    #scoreboard players add @s IZ.Recursion 1

# 演出
    particle end_rod ~ ~ ~ 0 0 0 0 1 normal @a

    execute if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..2,sort=nearest,limit=1] at @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..2,sort=nearest,limit=1] positioned ~ ~1.2 ~ rotated as @s run function asset:sacred_treasure/0683.moonlight_armor/14.attack_particle


# 再帰
    execute unless entity @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..2] positioned ^ ^ ^0.5 run function asset:sacred_treasure/0683.moonlight_armor/13.attack_recursion