#> asset:sacred_treasure/0641.spirit_garment/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0641.spirit_garment/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/feet

# ここから先は神器側の効果の処理を書く

# 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,641,4]
    # 補正値
        data modify storage api: Argument.Amount set value 0.06
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:modifier/heal/add

# 最大体力+8
    attribute @s generic.max_health modifier add 00000001-0000-0001-0000-028100000003 "MaxHealth" 8 add