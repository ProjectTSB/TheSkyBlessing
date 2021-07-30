#> asset:sacred_treasure/0641.neptune_boots/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0641.neptune_boots/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/feet

# ここから先は神器側の効果の処理を書く

# 属性耐性+

    # 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,624,3]
    # 補正値
        data modify storage api: Argument.Amount set value 0.1
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:player_modifier/defense/water/add

    # 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,624,6]
    # 補正値
        data modify storage api: Argument.Amount set value 0.05
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:player_modifier/defense/thunder/add

