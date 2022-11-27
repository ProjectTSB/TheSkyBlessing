#> asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/main
#
# 湖のメイン処理
#
# @within function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/loop

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s KA.Tick
# 一定間隔での処理
    scoreboard players operation $Interval Temporary %= $20 Const

# 波の演出&ターゲット設定
    execute if score $Interval Temporary matches 0 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/wave/1
    execute if score $Interval Temporary matches 1 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/wave/2
    execute if score $Interval Temporary matches 2 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/wave/3
    execute if score $Interval Temporary matches 3 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/wave/4
    execute if score $Interval Temporary matches 4 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/wave/5
    execute if score $Interval Temporary matches 5 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/wave/6
    execute if score $Interval Temporary matches 6 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/wave/7
    execute if score $Interval Temporary matches 7 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/wave/8
    execute if score $Interval Temporary matches 8 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/wave/9
    execute if score $Interval Temporary matches 9 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/wave/10
    execute if score $Interval Temporary matches 10 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/wave/11
    execute if score $Interval Temporary matches 11 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/wave/12
    execute if score $Interval Temporary matches 12 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/wave/13
    execute if score $Interval Temporary matches 13 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/wave/14
    execute if score $Interval Temporary matches 14 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/wave/15
    execute if score $Interval Temporary matches 15 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/wave/16

# $Intervalが0~15の時に敵にはダメージ、プレイヤーには補正を掛ける
    execute if score $Interval Temporary matches 0..15 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/effects

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s KA.Tick
# 一定間隔での処理
    scoreboard players operation $Interval Temporary %= $14 Const

# $Intervalが0のときに波紋を発生させる
    execute if score $Interval Temporary matches 0 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/ripple/summon_position

# リセット
    scoreboard players reset $Interval Temporary

# スコア
    scoreboard players add @s KA.Tick 1

# キル
    execute if entity @s[scores={KA.Tick=200..}] run kill @s

# ループ
    schedule function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/loop 1t replace