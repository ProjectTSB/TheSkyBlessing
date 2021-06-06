#> asset:sacred_treasure/0573.final_prism/laser
#
# レーザー
#
# @within function asset:sacred_treasure/0573.final_prism/*

# 即着レーザー
# パーティクル 虹色だぞ
    particle minecraft:dust 10 10 10 0.5 ~ ~ ~ 0 0 0 0 1
    execute if score @s[distance=2..] Sh.Beam_Rainbow matches 1 run particle minecraft:dust 1 0.369 0.369 0.5 ~ ~ ~ 0 0 0 0 1
    execute if score @s[distance=2..] Sh.Beam_Rainbow matches 2 run particle minecraft:dust 1 0.631 0.263 0.5 ~ ~ ~ 0 0 0 0 1
    execute if score @s[distance=2..] Sh.Beam_Rainbow matches 3 run particle minecraft:dust 1 1 0.459 0.5 ~ ~ ~ 0 0 0 0 1
    execute if score @s[distance=2..] Sh.Beam_Rainbow matches 4 run particle minecraft:dust 0.49 1 0.49 0.5 ~ ~ ~ 0 0 0 0 1
    execute if score @s[distance=2..] Sh.Beam_Rainbow matches 5 run particle minecraft:dust 0.502 0.749 1 0.5 ~ ~ ~ 0 0 0 0 1
    execute if score @s[distance=2..] Sh.Beam_Rainbow matches 6 run particle minecraft:dust 0.514 0.514 1 0.5 ~ ~ ~ 0 0 0 0 1
    execute if score @s[distance=2..] Sh.Beam_Rainbow matches 7 run particle minecraft:dust 1 0.478 1 0.5 ~ ~ ~ 0 0 0 0 1
    execute if score @s[distance=2..] Sh.Beam_Rainbow matches 8 run particle minecraft:dust 0.514 0.514 1 0.5 ~ ~ ~ 0 0 0 0 1
    execute if score @s[distance=2..] Sh.Beam_Rainbow matches 9 run particle minecraft:dust 0.502 0.749 1 0.5 ~ ~ ~ 0 0 0 0 1
    execute if score @s[distance=2..] Sh.Beam_Rainbow matches 10 run particle minecraft:dust 0.49 1 0.49 0.5 ~ ~ ~ 0 0 0 0 1
    execute if score @s[distance=2..] Sh.Beam_Rainbow matches 11 run particle minecraft:dust 1 1 0.459 0.5 ~ ~ ~ 0 0 0 0 1
    execute if score @s[distance=2..] Sh.Beam_Rainbow matches 12 run particle minecraft:dust 1 0.631 0.263 0.5 ~ ~ ~ 0 0 0 0 1

# 限界距離、または地形ヒット これまた虹色
# execute unless entity @s[distance=..15] run particle minecraft:entity_effect ~ ~ ~ 0 0 0 1 1
# execute unless block ^ ^ ^1 #sheepinator:no_collision run particle minecraft:entity_effect ~ ~ ~ 0 0 0 1 1
    #execute unless entity @s[distance=..15] run function sheepinator:item/sheep_convert_beamer/beam_limit
    #execute unless block ^ ^ ^1 #sheepinator:no_collision run function sheepinator:item/sheep_convert_beamer/beam_limit

# 接触時判定
    #execute if entity @s[distance=..15] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @s[dx=0] if entity @e[dx=0,team=!null,tag=!Sh.Beam_Sheep_Spin,type=!#sheepinator:no_convert] run function sheepinator:item/sheep_convert_beamer/hit_sound
    #execute if entity @s[distance=..15] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @s[dx=0] as @e[dx=0,team=!null,tag=!Sh.Beam_Spin,type=!#sheepinator:no_convert] at @s run function sheepinator:item/sheep_convert_beamer/hit

# 前進
    execute if entity @s[distance=..15] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @s[dx=0] unless entity @e[tag=Enemy,tag=!Uninterferable,dx=0] positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #lib:no_collision positioned ^ ^ ^0.5 run function asset:sacred_treasure/0573.final_prism/laser
    execute if entity @s[distance=..15] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #lib:no_collision positioned ^ ^ ^0.5 run function asset:sacred_treasure/0573.final_prism/laser