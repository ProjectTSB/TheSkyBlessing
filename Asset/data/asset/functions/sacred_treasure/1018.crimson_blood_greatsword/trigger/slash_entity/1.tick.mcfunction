#> asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slash_entity/1.tick
#
#
#
# @within function
#   asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/active_main
#   asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slash_entity/1.tick
#   asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/rejoin_process

# エンティティに実行させる
    execute as @e[type=armor_stand,tag=SA.SlashEntity] at @s run function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slash_entity/2.main

# エンティティがいればループ
    execute if entity @e[type=armor_stand,tag=SA.SlashEntity,limit=1] run schedule function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slash_entity/1.tick 1t