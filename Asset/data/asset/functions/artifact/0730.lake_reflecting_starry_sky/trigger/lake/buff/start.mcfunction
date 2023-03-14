#> asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/buff/start
#
# バフの付与などの開始処理
#
# @within function asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/main

# 既に補正がかかっていた場合、効果時間をリセットする
    execute if entity @s[tag=KA.Buff] run scoreboard players reset @s KA.Tick

# 補正を掛ける
    data modify storage api: Argument.UUID set value [I;1,1,730,0]
    data modify storage api: Argument.Amount set value 0.3
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/water/add

# Tagをつける
    tag @s add KA.Buff
    tag @s add KA.RejoinTarget

# ループ開始
    schedule function asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/buff/loop 1t replace