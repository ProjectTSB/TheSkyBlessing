#> asset:mob/0284.lexiel/tick/move/teleport/move_to_ground/1.search_ground
#
# 地面を探す
#
# @within function asset:mob/0284.lexiel/tick/**

# 下にずらして再帰
    execute if entity @s[distance=..16] if block ~ ~ ~ #lib:no_collision positioned ~ ~-1 ~ run function asset:mob/0284.lexiel/tick/move/teleport/move_to_ground/1.search_ground

# ブロックだったら移動終了する
    execute unless block ~ ~ ~ #lib:no_collision run function asset:mob/0284.lexiel/tick/move/teleport/move_to_ground/2.detect_ground

# 奈落だったり、下が遠すぎたらそのまま実行
    execute unless entity @s[distance=..16] at @r run function asset:mob/0284.lexiel/tick/move/teleport/place_marker