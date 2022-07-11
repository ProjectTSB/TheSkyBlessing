#> asset:sacred_treasure/0953.meteor_rain/trigger/4.emitter_tick
#
#
#
# @within function
#   asset:sacred_treasure/0953.meteor_rain/trigger/3.main
#   asset:sacred_treasure/0953.meteor_rain/trigger/4.emitter_tick
#   asset:sacred_treasure/0953.meteor_rain/trigger/rejoin_process

# プレイヤーに実行させる
    execute as @a[scores={QH.Count=..19}] at @s run function asset:sacred_treasure/0953.meteor_rain/trigger/5.emitter_main

# ループ
    execute if entity @p[scores={QH.Count=..19}] run schedule function asset:sacred_treasure/0953.meteor_rain/trigger/4.emitter_tick 1t