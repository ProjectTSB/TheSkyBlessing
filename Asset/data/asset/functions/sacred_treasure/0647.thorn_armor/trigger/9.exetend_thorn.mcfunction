#> asset:sacred_treasure/0647.thorn_armor/trigger/9.exetend_thorn
#
#
#
# @within function
#   asset:sacred_treasure/0647.thorn_armor/trigger/8.fullset_hurt
#   asset:sacred_treasure/0647.thorn_armor/trigger/9.exetend_thorn

# スコア
    scoreboard players add @s HZ.Tick 1

# 演出
    particle block oak_leaves ~ ~ ~ 0 0 0 0 1 normal @a
    particle dust 0 0.2 0 1 ~ ~ ~ 0 0 0 0 1 normal @a
    playsound minecraft:block.sweet_berry_bush.break master @a ~ ~ ~ 0.2 1 0

# 再帰処理
    execute if score @s HZ.Tick matches ..20 unless entity @e[type=#lib:living,tag=Attacker,distance=..0.5] facing entity @e[type=#lib:living,tag=Attacker,distance=..20] eyes positioned ^ ^ ^0.5 run function asset:sacred_treasure/0647.thorn_armor/trigger/9.exetend_thorn