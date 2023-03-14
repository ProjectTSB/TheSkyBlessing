#> asset:artifact/0932.equal_speed_charlie_london/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0932.equal_speed_charlie_london/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く
    effect give @s speed 1000000 1 true