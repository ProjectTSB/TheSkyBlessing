#> asset:sacred_treasure/0714.deep_sea_coral_boots/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0714.deep_sea_coral_boots/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/feet

# ここから先は神器側の効果の処理を書く

# 水耐性+10%
    data modify storage api: Argument.UUID set value [I;1,1,714,3]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/water/add

# 水攻撃+5%
    data modify storage api: Argument.UUID set value [I;1,1,714,3]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/water/add

# 体力回復量+5%
    data modify storage api: Argument.UUID set value [I;1,1,714,3]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/heal/add

# 火攻撃-20%
    data modify storage api: Argument.UUID set value [I;1,1,714,3]
    data modify storage api: Argument.Amount set value -0.2
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/fire/add
