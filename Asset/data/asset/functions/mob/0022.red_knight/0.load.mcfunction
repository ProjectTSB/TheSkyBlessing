#> asset:mob/0022.red_knight/0.load
#
# MOBに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/0022.red_knight/**
    scoreboard objectives add M.Tick dummy
    scoreboard objectives add M.Phase dummy
    scoreboard objectives add M.Speed dummy
    scoreboard objectives add M.Phase dummy
    scoreboard objectives add M.MoveTimesPerTick dummy
    scoreboard objectives add M.DeathExplosion dummy
    scoreboard objectives add M.LoopCount dummy
    scoreboard objectives add M.FakeInertia dummy