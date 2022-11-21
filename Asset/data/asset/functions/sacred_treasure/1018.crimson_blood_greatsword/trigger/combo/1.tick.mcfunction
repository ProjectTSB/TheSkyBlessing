#> asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/combo/1.tick
#
# コンボ待機
#
# @within function
#   asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/active_main
#   asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/combo/1.tick
#   asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/rejoin_process

# エンティティに実行させる
    execute as @a[scores={SA.Wait=0..}] at @s run function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/combo/2.main

# エンティティがいればループ
    execute if entity @p[scores={SA.Wait=0..}] run schedule function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/combo/1.tick 1t