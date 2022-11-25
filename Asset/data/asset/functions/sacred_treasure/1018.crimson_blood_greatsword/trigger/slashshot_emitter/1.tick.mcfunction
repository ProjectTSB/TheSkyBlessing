#> asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot_emitter/1.tick
#
#
#
# @within function
#   asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/rejoin_process
#   asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot_emitter/1.tick
#   asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/combo/slash5

# エンティティに実行させる
    execute as @e[type=marker,tag=SA.ShotEmitter] at @s run function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot_emitter/2.main

# エンティティがいればループ
    execute if entity @e[type=marker,tag=SA.ShotEmitter,limit=1] run schedule function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot_emitter/1.tick 1t