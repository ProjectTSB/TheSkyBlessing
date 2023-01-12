#> asset:mob/1004.tultaria/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin
    execute if entity @e[type=armor_stand,tag=RW.DeathAnimation] run schedule function asset:mob/1004.tultaria/death/3.death_tick 1t
    execute if entity @e[type=armor_stand,tag=RW.SlashSweep,limit=1] run schedule function asset:mob/1004.tultaria/tick/skill/common/slash_entity/tick 1t