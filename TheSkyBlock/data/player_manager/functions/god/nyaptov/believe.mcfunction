#> player_manager:god/nyaptov/believe
#
#
#
# @within
#   function player_manager:god/change_believe/believe2
#   function lib:debug/change_believe/nyaptov

# 信仰タグ付与
    tag @s add Believe.Nyaptov
# 回復+30%
    data modify storage api: Argument.UUID set value [2, 1, 1, 11]
    data modify storage api: Argument.Amount set value 0.3
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/heal/add
# 攻撃-20%
    data modify storage api: Argument.UUID set value [2, 1, 1, 11]
    data modify storage api: Argument.Amount set value -0.2
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/base/add
# 水耐性-15%
    data modify storage api: Argument.UUID set value [2, 1, 1, 11]
    data modify storage api: Argument.Amount set value -0.15
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/water/add