#> asset:mob/1004.tultaria/tick/skill/1.melee_attack/slash_entity/1.tick
#
#
#
# @within function
#   asset:mob/1004.tultaria/tick/skill/1.melee_attack/**
#   asset:mob/1004.tultaria/rejoin_process

# エンティティに実行させる
    execute as @e[type=armor_stand,tag=RW.SlashSweep] at @s run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/slash_entity/2.main

# エンティティがいればループ
    execute if entity @e[type=armor_stand,tag=RW.SlashSweep,limit=1] run schedule function asset:mob/1004.tultaria/tick/skill/1.melee_attack/slash_entity/1.tick 1t