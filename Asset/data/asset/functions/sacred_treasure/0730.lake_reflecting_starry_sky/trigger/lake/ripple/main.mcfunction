#> asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/ripple/main
#
# 波紋のメイン処理
#
# @within function asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/ripple/loop

# スコア
    scoreboard players add @s KA.Tick 1

# 一定の値になるまで演出と落下
    execute if entity @s[scores={KA.Tick=1..12}] run particle electric_spark ~ ~ ~ 0 0 0 0 1
    execute if entity @s[scores={KA.Tick=1..8}] run playsound minecraft:entity.ender_eye.death neutral @a ~ ~ ~ 0.1 1 0
    execute if entity @s[scores={KA.Tick=1..12}] run tp @s ~ ~-0.25 ~

# ダメージと演出
    execute if entity @s[scores={KA.Tick=12..}] run function asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/ripple/damage

# ループ
    schedule function asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/ripple/loop 1t replace