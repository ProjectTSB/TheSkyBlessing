#> asset:mob/1004.tultaria/tick/skill/common/slash_entity/tick
#
#
#
# @within function
#   asset:mob/1004.tultaria/tick/skill/**
#   asset:mob/1004.tultaria/tick/skill/common/slash_entity/tick

# エンティティに実行させる
    execute as @e[type=armor_stand,tag=RW.SlashSweep] at @s run function asset:mob/1004.tultaria/tick/skill/common/slash_entity/main

# エンティティがいればループ
    execute if entity @e[type=armor_stand,tag=RW.SlashSweep,limit=1] run schedule function asset:mob/1004.tultaria/tick/skill/common/slash_entity/tick 1t