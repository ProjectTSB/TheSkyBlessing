#> asset:sacred_treasure/0817.dragons_neck_ball/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0817.dragons_neck_ball/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/head

# ここから先は神器側の効果の処理を書く
# バフを付与
    effect give @s fire_resistance 1000000 2 
    effect give @s strength 1000000 2 
    effect give @s resistance 1000000 2 
    effect give @s slow_falling 1000000 1

# 音
    playsound ogg:ambient.nether.crimson_forest.shine3 master @a ~ ~ ~ 1 1
    playsound ogg:ambient.nether.crimson_forest.shine1 master @a ~ ~ ~ 1 2
