#> asset:sacred_treasure/0573.final_prism/laser
#
# レーザー
#
# @within function asset:sacred_treasure/0573.final_prism/*

# 即着レーザー
# パーティクル 虹色だぞ
    execute unless entity @s[distance=..2] if score $Random Temporary matches 0 run particle minecraft:dust 1 0.694 0.694 1 ~ ~ ~ 0 0 0 0 1 force
    execute unless entity @s[distance=..2] if score $Random Temporary matches 1 run particle minecraft:dust 1 1 0.678 1 ~ ~ ~ 0 0 0 0 1 force
    execute unless entity @s[distance=..2] if score $Random Temporary matches 2 run particle minecraft:dust 0.765 0.882 1 1 ~ ~ ~ 0 0 0 0 1 force
    execute unless entity @s[distance=..2] if score $Random Temporary matches 3 run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0 0 0 0 1 force

# 確率で派手派手だな
    execute unless entity @s[distance=..2] if predicate lib:random_pass_per/5 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force
    execute unless entity @s[distance=..2] if predicate lib:random_pass_per/10 run particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force


# 接触時判定
    #execute if entity @s[distance=..15] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @s[dx=0] if entity @e[dx=0,team=!null,tag=!Sh.Beam_Sheep_Spin,type=!#sheepinator:no_convert] run function sheepinator:item/sheep_convert_beamer/hit_sound
    #execute if entity @s[distance=..15] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @s[dx=0] as @e[dx=0,team=!null,tag=!Sh.Beam_Spin,type=!#sheepinator:no_convert] at @s run function sheepinator:item/sheep_convert_beamer/hit

# 前進
    execute if entity @s[distance=..45] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @s[dx=0] unless entity @e[tag=Enemy,tag=!Uninterferable,dx=0] positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #lib:no_collision positioned ^ ^ ^0.5 run function asset:sacred_treasure/0573.final_prism/laser
    execute if entity @s[distance=..45] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #lib:no_collision positioned ^ ^ ^0.5 run function asset:sacred_treasure/0573.final_prism/laser