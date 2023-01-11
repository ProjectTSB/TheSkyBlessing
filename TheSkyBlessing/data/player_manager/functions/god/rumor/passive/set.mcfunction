#> player_manager:god/rumor/passive/set
#
#
#
# @within function player_manager:god/rumor/passive/

# タグ付与
    tag @s add PassiveBuff
# 攻撃+30%
    data modify storage api: Argument.UUID set value [1, 2, 1, 12]
    data modify storage api: Argument.Amount set value 0.3
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/base/add
# 耐性+30%
    data modify storage api: Argument.UUID set value [1, 2, 1, 12]
    data modify storage api: Argument.Amount set value 0.3
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/base/add
# MP回復量+0.5
    data modify storage api: Argument.UUID set value [1, 2, 1, 12]
    data modify storage api: Argument.Amount set value 0.5
    data modify storage api: Argument.Operation set value "add"
    function api:modifier/mp_regen/add