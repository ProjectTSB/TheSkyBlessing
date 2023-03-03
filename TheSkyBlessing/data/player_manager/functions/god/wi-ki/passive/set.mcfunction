#> player_manager:god/wi-ki/passive/set
#
#
#
# @within function player_manager:god/wi-ki/passive/

# タグ付与
    tag @s add PassiveDebuff
# 耐性-50%
    data modify storage api: Argument.UUID set value [1, 2, 1, 14]
    data modify storage api: Argument.Amount set value -0.5
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/base/add