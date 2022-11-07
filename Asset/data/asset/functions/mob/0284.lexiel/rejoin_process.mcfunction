#> asset:mob/0284.lexiel/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin
    execute if entity @e[type=armor_stand,tag=7W.DeathAnimation] run schedule function asset:mob/0284.lexiel/death/3.death_tick 1t
    execute if entity @e[type=armor_stand,tag=7W.SlashSweep,limit=1] run schedule function asset:mob/0284.lexiel/tick/skill/1.melee_attack/slash_entity/1.tick 1t