#> asset:sacred_treasure/0985.noname/trigger/slash/slash_schedule
#
#
#
# @within function
#       asset:sacred_treasure/0985.noname/trigger/slash/slash?
#       asset:sacred_treasure/0985.noname/trigger/slash/slash_schedule
#       asset:sacred_treasure/0985.noname/trigger/rejoin_process

# エンティティに実行させる
    execute as @e[type=armor_stand,tag=RD.SlashSweep] at @s run function asset:sacred_treasure/0985.noname/trigger/slash/slash_anime

# エンティティがいればループ
    execute if entity @e[type=armor_stand,tag=RD.SlashSweep,limit=1] run schedule function asset:sacred_treasure/0985.noname/trigger/slash/slash_schedule 1t