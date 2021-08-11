#> asset:sacred_treasure/0670.brizzard_leggings/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0670.brizzard_leggings/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/legs

# ここから先は神器側の効果の処理を書く

# 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,670,4]
    # 補正値
        data modify storage api: Argument.Amount set value 0.05
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:player_modifier/defense/physical/add

# 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,670,4]
    # 補正値
        data modify storage api: Argument.Amount set value 0.05
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:player_modifier/defense/water/add

# 演出
    particle snowflake ~ ~0.4 ~ 0.4 0.2 0.4 0 10 normal @a
