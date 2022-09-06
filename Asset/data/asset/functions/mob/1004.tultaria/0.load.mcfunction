#> asset:mob/1004.tultaria/0.load
#
# MOBに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/1004.tultaria/**/**
    scoreboard objectives add RW.Tick dummy
    scoreboard objectives add RW.DeathExplode dummy
    scoreboard objectives add RW.HealthMax dummy
    scoreboard objectives add RW.MoveTimesPerTick dummy
    scoreboard objectives add RW.Speed dummy
    scoreboard objectives add RW.SlashAgain dummy
    scoreboard objectives add RW.FakeInertia dummy