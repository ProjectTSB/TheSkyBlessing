#> asset:sacred_treasure/0664.purity_helm/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0664.purity_helm/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/head

# ここから先は神器側の効果の処理を書く

# 属性ダメージ量+7.5%
    data modify storage api: Argument.UUID set value [I;1,1,664,6]
    data modify storage api: Argument.Amount set value 0.075
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/base/add

# 物理耐性+7.5%
    data modify storage api: Argument.UUID set value [I;1,1,664,6]
    data modify storage api: Argument.Amount set value 0.075
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/physical/add

# 魔法耐性+7.5%
    data modify storage api: Argument.UUID set value [I;1,1,664,6]
    data modify storage api: Argument.Amount set value 0.075
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/magic/add

