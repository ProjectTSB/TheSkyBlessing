#> player_manager:god/nyaptov/believe
#
#
#
# @within
#   function player_manager:god/change_believe/believe2
#   function debug:change_believe/nyaptov

# 信仰タグ付与
    tag @s add Believe.Nyaptov
# 回復+30%
    data modify storage api: Argument.UUID set value [2, 1, 1, 11]
    data modify storage api: Argument.Amount set value 0.3
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/heal/add
# 攻撃-20%
    data modify storage api: Argument.UUID set value [2, 1, 1, 11]
    data modify storage api: Argument.Amount set value -0.2
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/base/add
# 水耐性-10%
    data modify storage api: Argument.UUID set value [2, 1, 1, 11]
    data modify storage api: Argument.Amount set value -0.10
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/water/add
# 落下ダメージ-100%
    data modify storage api: Argument.UUID set value [2, 1, 1, 11]
    data modify storage api: Argument.Amount set value 1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/fall/add
