#> asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/buff/loop
#
# プレイヤーのバフ用のループ処理
#
# @within function
#   asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/buff/start
#   asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/buff/main
#   asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/rejoin_branch

# ループ
    execute as @a[tag=KA.Buff] at @s run function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/buff/main