#> asset:sacred_treasure/0953.meteor_rain/trigger/4.emitter_tick
#
# ループ実行部分
#
# @within function
#   asset:sacred_treasure/0953.meteor_rain/trigger/3.main
#   asset:sacred_treasure/0953.meteor_rain/trigger/4.emitter_tick
#   asset:sacred_treasure/0953.meteor_rain/trigger/rejoin_process

# プレイヤーに実行させる
    execute as @a[scores={QH.Count=..9}] at @s run function asset:sacred_treasure/0953.meteor_rain/trigger/5.emitter_main

# ループ
    execute if entity @p[scores={QH.Count=..9}] run schedule function asset:sacred_treasure/0953.meteor_rain/trigger/4.emitter_tick 1t