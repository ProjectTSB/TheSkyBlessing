#> player_manager:god/rumor/believe
#
#
#
# @within
#   function player_manager:god/change_believe/believe2
#   function debug:change_believe/rumor

# 信仰タグ付与
    tag @s add Believe.Rumor
# 雷攻撃+15%
    data modify storage api: Argument.UUID set value [2, 1, 1, 12]
    data modify storage api: Argument.Amount set value 0.15
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/thunder/add
# 雷耐性-15%
    data modify storage api: Argument.UUID set value [2, 1, 1, 12]
    data modify storage api: Argument.Amount set value -0.15
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/thunder/add
# 攻撃-10%
    data modify storage api: Argument.UUID set value [2, 1, 1, 12]
    data modify storage api: Argument.Amount set value -0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/base/add
# 耐性-10%
    data modify storage api: Argument.UUID set value [2, 1, 1, 12]
    data modify storage api: Argument.Amount set value -0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/base/add