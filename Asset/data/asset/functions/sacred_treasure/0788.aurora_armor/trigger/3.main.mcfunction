#> asset:sacred_treasure/0788.aurora_armor/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0788.aurora_armor/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/chest

# ここから先は神器側の効果の処理を書く

# 魔法耐性+5%
    data modify storage api: Argument.UUID set value [I;1,1,788,5]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/magic/add

# 雷耐性+10%
    data modify storage api: Argument.UUID set value [I;1,1,788,5]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/thunder/add

# 雷攻撃+5%
    data modify storage api: Argument.UUID set value [I;1,1,788,5]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/thunder/add

# MP回復+5%
    data modify storage api: Argument.UUID set value [I;1,1,788,5]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/mp_regen/add

# 物理耐性-10%
    data modify storage api: Argument.UUID set value [I;1,1,788,5]
    data modify storage api: Argument.Amount set value -0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/physical/add
