#> asset:mob/1004.tultaria/tick/skill/common/search_ground/
#
# 実行者が地面まで降りる。あまりにも地面が遠い場合は何も起きない。
#
# @within function asset:mob/1004.tultaria/tick/**

# 下にずらして再帰
    execute if entity @s[distance=..32] if block ~ ~ ~ #lib:no_collision positioned ~ ~-1 ~ run function asset:mob/1004.tultaria/tick/skill/common/search_ground/

# ブロックだったらそこまで移動
    execute unless block ~ ~ ~ #lib:no_collision align xyz run tp @s ~0.5 ~1 ~0.5