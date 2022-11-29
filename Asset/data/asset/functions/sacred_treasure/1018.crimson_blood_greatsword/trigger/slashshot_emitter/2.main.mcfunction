#> asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot_emitter/2.main
#
#
#
# @within function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot_emitter/1.tick

# オーナー特定
    execute at @a[distance=..100] if score @s SA.UserID = @p UserID run tag @p add SA.OwnerPlayer

# ショット召喚
    execute if score @s SA.Tick matches 0 run function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot_emitter/summon_shot
    execute if score @s SA.Tick matches 5 positioned ^1 ^ ^ run function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot_emitter/summon_shot
    execute if score @s SA.Tick matches 10 positioned ^-1 ^ ^ run function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot_emitter/summon_shot
    #execute if score @s SA.Tick matches 10 positioned ^4 ^ ^ run function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot_emitter/summon_shot
    #execute if score @s SA.Tick matches 10 positioned ^-4 ^ ^ run function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot_emitter/summon_shot

# スコア加算
    scoreboard players add @s SA.Tick 1

# 持続時間
    kill @s[scores={SA.Tick=11..}]

# リセット
    tag @p[tag=SA.OwnerPlayer] remove SA.OwnerPlayer