#> asset:mob/0022.red_knight/tick/skills/hyper_explosion/3.search_ground
#
# 再帰処理で地面を探す
#
# @within function
#   asset:mob/0022.red_knight/tick/skills/hyper_explosion/1.tick
#   asset:mob/0022.red_knight/tick/skills/hyper_explosion/3.search_ground

# ブロックだったらパーティクル投影
    execute unless block ~ ~ ~ #lib:no_collision positioned ~ ~1 ~ run function asset:mob/0022.red_knight/tick/skills/hyper_explosion/4.alert

# 奈落だったり、下が遠すぎたらそのまま実行
    execute unless entity @s[distance=..16] run function asset:mob/0022.red_knight/tick/skills/hyper_explosion/4.alert

# 下にずらして再帰
    execute if entity @s[distance=..16] if block ~ ~ ~ #lib:no_collision positioned ~ ~-1 ~ run function asset:mob/0022.red_knight/tick/skills/hyper_explosion/3.search_ground