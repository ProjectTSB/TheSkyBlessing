#> asset:sacred_treasure/0711.deep_sea_coral_crown/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0711.deep_sea_coral_crown/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/head

# ここから先は神器側の効果の処理を書く

# メモ 各部位 水耐性+10％ 水攻撃+5％ 体力回復量+5％ 火攻撃-10%

# 水耐性+10%
    data modify storage api: Argument.UUID set value [I;1,1,711,6]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/water/add

# 水攻撃+5%
    data modify storage api: Argument.UUID set value [I;1,1,711,6]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/water/add

# 体力回復量+10%
    data modify storage api: Argument.UUID set value [I;1,1,711,6]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/heal/add

# 火攻撃-10%
    data modify storage api: Argument.UUID set value [I;1,1,711,6]
    data modify storage api: Argument.Amount set value -0.2
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/fire/add
