#> asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/buff/loop
#
# プレイヤーのバフ用のループ処理
#
# @within function
#   asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/buff/start
#   asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/buff/main
#   asset:artifact/0730.lake_reflecting_starry_sky/trigger/rejoin_branch

# ループ
    execute as @a[tag=KA.Buff] at @s run function asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/buff/main