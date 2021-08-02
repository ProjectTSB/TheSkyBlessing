#> asset:sacred_treasure/0647.thorn_armor/6.exetend_thorn
#
#
#
# @within function asset:sacred_treasure/0647.thorn_armor/**

scoreboard players add @s HZ.Tick 1
particle block oak_leaves ~ ~ ~ 0 0 0 0 1 normal @a
particle dust 0 0.2 0 1 ~ ~ ~ 0 0 0 0 1 normal @a
playsound minecraft:block.sweet_berry_bush.break master @a ~ ~ ~ 0.2 1 0
execute if score @s HZ.Tick matches ..20 unless entity @e[tag=Attacker,distance=..0.5] facing entity @e[tag=Attacker,distance=..20] eyes positioned ^ ^ ^0.5 run function asset:sacred_treasure/0647.thorn_armor/6.exetend_thorn
