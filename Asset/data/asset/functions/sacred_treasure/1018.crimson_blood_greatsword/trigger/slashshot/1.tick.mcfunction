#> asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot/1.tick
#
# スラッシュショット
#
# @within function
#   asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot_emitter/summon_shot
#   asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot/1.tick
#   asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/rejoin_process

# エンティティに実行させる
    execute as @e[type=marker,tag=SA.SlashShot] at @s run function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot/2.main

# エンティティがいればループ
    execute if entity @e[type=marker,tag=SA.SlashShot,limit=1] run schedule function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot/1.tick 1t