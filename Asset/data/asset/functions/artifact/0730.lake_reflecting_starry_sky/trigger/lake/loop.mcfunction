#> asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/loop
#
# 湖のループ処理
#
# @within function
#   asset:artifact/0730.lake_reflecting_starry_sky/trigger/3.main
#   asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/main
#   asset:artifact/0730.lake_reflecting_starry_sky/trigger/rejoin_branch

# ループ
    execute as @e[type=marker,tag=KA.Lake] at @s run function asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/main