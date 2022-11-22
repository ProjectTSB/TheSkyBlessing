#> asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/sacrifice/1.tick
#
#
#
# @within function
#   asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/active_sub
#   asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/sacrifice/1.tick
#   asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/rejoin_process

# エンティティに実行させる
    execute as @a[scores={SA.BloodCharge=0..}] at @s run function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/sacrifice/2.main

# エンティティがいればループ
    execute if entity @p[scores={SA.BloodCharge=0..}] run schedule function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/sacrifice/1.tick 1t