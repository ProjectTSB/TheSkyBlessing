#> asset:mob/0311.blazing_inferno/tick/skill/spread_mine/search_ground
#
# 地面を探す。再帰処理なんて使いたくはないが…
#
# @within function
#   asset:mob/0311.blazing_inferno/tick/skill/spread_mine/summon_mine
#   asset:mob/0311.blazing_inferno/tick/skill/spread_mine/search_ground

# 下にずらして再帰
    execute if entity @s[distance=..16] if block ~ ~ ~ #lib:no_collision positioned ~ ~-1 ~ run function asset:mob/0311.blazing_inferno/tick/skill/spread_mine/search_ground

# ブロックだったらそこまで移動
    execute unless block ~ ~ ~ #lib:no_collision align xyz run tp @s ~0.5 ~1 ~0.5