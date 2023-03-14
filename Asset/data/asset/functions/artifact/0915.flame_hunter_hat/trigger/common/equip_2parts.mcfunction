#> asset:artifact/0915.flame_hunter_hat/trigger/common/equip_2parts
#
# 2部位補正
#
# @within function asset:artifact/0915.flame_hunter_hat/trigger/common/equip

# 火耐性
    data modify storage api: Argument.UUID set value [I;1,1,915,6]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/fire/add

# 火攻撃
    data modify storage api: Argument.UUID set value [I;1,1,915,6]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/fire/add

# 水耐性
    data modify storage api: Argument.UUID set value [I;1,1,915,6]
    data modify storage api: Argument.Amount set value -0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/water/add

# 移動速度
    attribute @s generic.movement_speed modifier add 00000001-0000-0001-0000-039300000001 "915.2Parts" 0.05 multiply_base