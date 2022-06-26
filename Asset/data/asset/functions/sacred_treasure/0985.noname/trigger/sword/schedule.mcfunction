#> asset:sacred_treasure/0985.noname/trigger/sword/schedule
#
#
#
# @within function
#       asset:sacred_treasure/0985.noname/trigger/sword/sword_summon
#       asset:sacred_treasure/0985.noname/trigger/sword/schedule
#       asset:sacred_treasure/0985.noname/trigger/rejoin_process

# エンティティに実行させる
    execute as @e[type=armor_stand,tag=RD.Sword] at @s run function asset:sacred_treasure/0985.noname/trigger/sword/sword

# エンティティがいればループ
    execute if entity @e[type=armor_stand,tag=RD.Sword,limit=1] run schedule function asset:sacred_treasure/0985.noname/trigger/sword/schedule 1t