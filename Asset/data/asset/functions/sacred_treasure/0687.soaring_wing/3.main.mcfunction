#> asset:sacred_treasure/0687.soaring_wing/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0687.soaring_wing/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う

# 1秒に15MPを消費
    scoreboard players add @s J3.MPUseTick 1
    execute if score @s J3.MPUseTick matches 20.. run function asset:sacred_treasure/lib/use/chest
    execute if score @s J3.MPUseTick matches 20.. run scoreboard players reset @s J3.MPUseTick
# ここから先は神器側の効果の処理を書く
