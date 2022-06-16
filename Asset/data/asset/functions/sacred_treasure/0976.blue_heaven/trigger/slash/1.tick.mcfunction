#> asset:sacred_treasure/0976.blue_heaven/trigger/slash/1.tick
#
#
#
# @within function
#   asset:sacred_treasure/0976.blue_heaven/trigger/3.main
#   asset:sacred_treasure/0976.blue_heaven/trigger/slash/1.tick

# エンティティに実行させる
    execute as @e[type=armor_stand,tag=R4.SlashCombo1] at @s run function asset:sacred_treasure/0976.blue_heaven/trigger/slash/2.main

# エンティティがいればループ
    execute if entity @e[type=armor_stand,tag=R4.SlashCombo1,limit=1] run schedule function asset:sacred_treasure/0976.blue_heaven/trigger/slash/1.tick 1t