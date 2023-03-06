#> asset:artifact/0953.meteor_rain/trigger/4.emitter_tick
#
# ループ実行部分
#
# @within function
#   asset:artifact/0953.meteor_rain/trigger/3.main
#   asset:artifact/0953.meteor_rain/trigger/4.emitter_tick
#   asset:artifact/0953.meteor_rain/trigger/rejoin_process

# プレイヤーに実行させる
    execute as @a[scores={QH.MeteorCastedCount=..19}] at @s run function asset:artifact/0953.meteor_rain/trigger/5.emitter_main

# ループ
    execute if entity @p[scores={QH.MeteorCastedCount=..19}] run schedule function asset:artifact/0953.meteor_rain/trigger/4.emitter_tick 1t