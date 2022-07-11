#> asset:sacred_treasure/0953.meteor_rain/trigger/4.emitter_tick
#
#
#
# @within function asset:sacred_treasure/0953.meteor_rain/trigger/3.main

# ループ
    execute if score @s QH.Tick matches 60.. run schedule function asset:sacred_treasure/0953.meteor_rain/trigger/4.meteor_emitter_tick 1t

# メイン処理実行
    function asset:sacred_treasure/0953.meteor_rain/trigger/5.meteor_emitter_main