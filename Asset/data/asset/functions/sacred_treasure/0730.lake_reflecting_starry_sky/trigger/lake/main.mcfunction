#> asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/main
#
# 湖のメイン処理
#
# @within function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/loop

# 実行時間を移す
    scoreboard players operation $Temp Temporary = @s KA.Tick
# 一定間隔での処理
    scoreboard players operation $Temp Temporary %= $25 Const
    execute if score $Temp Temporary matches 0 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/effect/circle/1
    execute if score $Temp Temporary matches 1 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/effect/circle/2
    execute if score $Temp Temporary matches 2 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/effect/circle/3
    execute if score $Temp Temporary matches 3 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/effect/circle/4
    execute if score $Temp Temporary matches 4 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/effect/circle/5
    execute if score $Temp Temporary matches 5 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/effect/circle/6
    execute if score $Temp Temporary matches 6 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/effect/circle/7
    execute if score $Temp Temporary matches 7 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/effect/circle/8
    execute if score $Temp Temporary matches 8 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/effect/circle/9
    execute if score $Temp Temporary matches 9 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/effect/circle/10
    execute if score $Temp Temporary matches 10 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/effect/circle/11
    execute if score $Temp Temporary matches 11 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/effect/circle/12
    execute if score $Temp Temporary matches 12 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/effect/circle/13
    execute if score $Temp Temporary matches 13 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/effect/circle/14
    execute if score $Temp Temporary matches 14 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/effect/circle/15
    execute if score $Temp Temporary matches 15 run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/effect/circle/16

    scoreboard players reset $Temp Temporary

# スコア
    scoreboard players add @s KA.Tick 1

# キル
    execute if entity @s[scores={KA.Tick=180..}] run kill @s

# ループ
    schedule function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/loop 1t replace