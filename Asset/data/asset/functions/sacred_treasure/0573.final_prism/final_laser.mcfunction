#> asset:sacred_treasure/0573.final_prism/final_laser
#
# 超必殺究極ビーム
#
# @within function asset:sacred_treasure/0573.final_prism/*

# お前をここで倒す！
    execute unless entity @s[distance=..2] run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0.35 0.35 0.35 0 1 force
    execute unless entity @s[distance=..2] run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0 1 force

# 前進
    execute if entity @s[distance=..45] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @s[dx=0] unless entity @e[tag=Enemy,tag=!Uninterferable,dx=0] positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #lib:no_collision positioned ^ ^ ^0.5 run function asset:sacred_treasure/0573.final_prism/final_laser
    execute if entity @s[distance=..45] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #lib:no_collision positioned ^ ^ ^0.5 run function asset:sacred_treasure/0573.final_prism/final_laser