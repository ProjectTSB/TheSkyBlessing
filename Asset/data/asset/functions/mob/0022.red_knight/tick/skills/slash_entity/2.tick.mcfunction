#> asset:mob/0022.red_knight/tick/skills/slash_entity/2.tick
#
# 斬撃エンティティのTick処理部分
#
# @within function
#   asset:mob/0022.red_knight/tick/skills/**
#   asset:mob/0022.red_knight/tick/skills/slash_entity/2.tick
#   asset:mob/0022.red_knight/rejoin_process

# エンティティに実行させる
    execute as @e[type=armor_stand,tag=M.SlashEntity] at @s run function asset:mob/0022.red_knight/tick/skills/slash_entity/3.main

# エンティティがいればループ
    execute if entity @e[type=armor_stand,tag=M.SlashEntity,limit=1] run schedule function asset:mob/0022.red_knight/tick/skills/slash_entity/2.tick 1t