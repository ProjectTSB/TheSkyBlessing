#> player_manager:god/flora/believe
#
#
#
# @within
#   function player_manager:god/change_believe/believe2
#   function debug:change_believe/flora

# 信仰タグ付与
    tag @s add Believe.Flora
# 水攻撃+20%
    data modify storage api: Argument.UUID set value [2, 1, 1, 10]
    data modify storage api: Argument.Amount set value 0.2
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/water/add
# 水耐性+20%
    data modify storage api: Argument.UUID set value [2, 1, 1, 10]
    data modify storage api: Argument.Amount set value 0.2
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/water/add
# 火耐性-20%
    data modify storage api: Argument.UUID set value [2, 1, 1, 10]
    data modify storage api: Argument.Amount set value -0.2
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/fire/add
