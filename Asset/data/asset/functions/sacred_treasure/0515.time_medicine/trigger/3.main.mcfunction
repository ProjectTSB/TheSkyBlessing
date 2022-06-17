#> asset:sacred_treasure/0515.time_medicine/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0515.time_medicine/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く
# 朝
    execute if predicate lib:is_day run function asset:sacred_treasure/0515.time_medicine/trigger/day
# 夜
    execute unless predicate lib:is_day run function asset:sacred_treasure/0515.time_medicine/trigger/night