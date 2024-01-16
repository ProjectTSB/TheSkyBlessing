#> asset:artifact/0730.lake_reflecting_starry_sky/trigger/rejoin_branch
#
# rejoinの分岐
#
# @within function asset:artifact/0730.lake_reflecting_starry_sky/trigger/rejoin_process

# 湖へ
    execute if entity @e[type=marker,tag=KA.Lake] run schedule function asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/loop 1t replace

# 波紋へ
    execute if entity @e[type=marker,tag=KA.Ripple] run schedule function asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/ripple/loop 1t replace