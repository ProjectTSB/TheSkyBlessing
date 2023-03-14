#> asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/ripple/loop
#
# 波紋攻撃のエンティティ用のループ
#
# @within function
#   asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/ripple/summon_position
#   asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/ripple/main
#   asset:artifact/0730.lake_reflecting_starry_sky/trigger/rejoin_branch

# ループ
    execute as @e[type=marker,tag=KA.Ripple] at @s run function asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/ripple/main