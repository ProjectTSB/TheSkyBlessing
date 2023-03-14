#> asset:artifact/0573.final_prism/trigger/final_laser
#
# 超必殺究極ビーム
#
# @within function asset:artifact/0573.final_prism/trigger/*

# お前をここで倒す！
    execute unless entity @s[distance=..2] run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0.1 0.1 0.1 0 1 force
    execute unless entity @s[distance=..2] run particle minecraft:electric_spark ~ ~ ~ 0.15 0.15 0.15 0.1 2 force
    execute unless entity @s[distance=..2] if predicate lib:random_pass_per/5 run particle minecraft:end_rod ~ ~ ~ 0.15 0.15 0.15 0 1 force
    execute unless entity @s[distance=..2] if predicate lib:random_pass_per/25 run particle minecraft:glow ~ ~ ~ 0.15 0.15 0.15 0 1 force

# 接触時判定
    execute if entity @s[distance=..45] positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[tag=Enemy,dx=0] add PrismDamage

# 前進
    execute if entity @s[distance=..45] if block ~ ~ ~ #lib:no_collision positioned ^ ^ ^0.5 run function asset:artifact/0573.final_prism/trigger/final_laser

# 減速
    effect give @s slowness 1 1 true