#> asset:sacred_treasure/0976.brave_sword/trigger/slash_entity/1.tick
#
#
#
# @within function
#   asset:sacred_treasure/0976.brave_sword/trigger/3.main
#   asset:sacred_treasure/0976.brave_sword/trigger/slash_entity/1.tick
#   asset:sacred_treasure/0976.brave_sword/trigger/rejoin_process

# エンティティに実行させる
    execute as @e[type=armor_stand,tag=R4.SlashSweep] at @s run function asset:sacred_treasure/0976.brave_sword/trigger/slash_entity/2.main

# エンティティがいればループ
    execute if entity @e[type=armor_stand,tag=R4.SlashSweep,limit=1] run schedule function asset:sacred_treasure/0976.brave_sword/trigger/slash_entity/1.tick 1t