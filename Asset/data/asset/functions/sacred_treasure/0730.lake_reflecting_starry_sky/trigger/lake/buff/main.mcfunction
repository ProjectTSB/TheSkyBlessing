#> asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/buff/main
#
# バフのメイン処理
#
# @within function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/buff/loop

# 演出
    particle dust 0.2 0.2 0.95 1.2 ~ ~0.9 ~ 0.5 0.2 0.5 0 1 normal @a

# スコア
    scoreboard players add @s KA.Tick 1

# 終了
    execute if entity @s[scores={KA.Tick=20..}] run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/buff/end

# ループ
    execute if entity @s[scores={KA.Tick=1..}] run schedule function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/buff/loop 1t replace