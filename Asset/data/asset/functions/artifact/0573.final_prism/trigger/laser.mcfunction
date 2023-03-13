#> asset:artifact/0573.final_prism/trigger/laser
#
# レーザー
#
# @within function asset:artifact/0573.final_prism/trigger/*

# 即着レーザー
# パーティクル 虹色だぞ
    execute unless entity @s[distance=..2] if score $Random Temporary matches 0 run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0 0 0 0 1 force
    execute unless entity @s[distance=..2] if score $Random Temporary matches 1 run particle minecraft:dust 1 0.694 0.694 1 ~ ~ ~ 0 0 0 0 1 force
    execute unless entity @s[distance=..2] if score $Random Temporary matches 2 run particle minecraft:dust 0.765 0.882 1 1 ~ ~ ~ 0 0 0 0 1 force
    execute unless entity @s[distance=..2] if score $Random Temporary matches 3 run particle minecraft:dust 1 1 0.678 1 ~ ~ ~ 0 0 0 0 1 force

# 確率で派手派手だな
    execute unless entity @s[distance=..2] run particle minecraft:electric_spark ~ ~ ~ 0 0 0 0 1 force
    execute unless entity @s[distance=..2] if predicate lib:random_pass_per/10 run particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force

# 接触時判定
    execute if entity @s[distance=..45] positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[tag=Enemy,dx=0] add PrismDamage

# 前進
    execute if entity @s[distance=..45] if block ~ ~ ~ #lib:no_collision positioned ^ ^ ^0.5 run function asset:artifact/0573.final_prism/trigger/laser