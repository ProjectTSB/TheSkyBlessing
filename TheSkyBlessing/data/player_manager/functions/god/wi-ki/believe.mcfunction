#> player_manager:god/wi-ki/believe
#
#
#
# @within
#   function player_manager:god/change_believe/believe2
#   function debug:change_believe/wi-ki

# 信仰タグ付与
    tag @s add Believe.Wi-ki
# 魔法攻撃+15%
    data modify storage api: Argument.UUID set value [2, 1, 1, 14]
    data modify storage api: Argument.Amount set value 0.15
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/magic/add
# 魔法耐性+20%
    data modify storage api: Argument.UUID set value [2, 1, 1, 14]
    data modify storage api: Argument.Amount set value 0.2
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/magic/add
# MP回復量+25%
    data modify storage api: Argument.UUID set value [2, 1, 1, 14]
    data modify storage api: Argument.Amount set value 0.25
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/mp_regen/add
# 物理攻撃-30%
    data modify storage api: Argument.UUID set value [2, 1, 1, 14]
    data modify storage api: Argument.Amount set value -0.3
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/physical/add
# 火耐性-30%
    data modify storage api: Argument.UUID set value [2, 1, 1, 14]
    data modify storage api: Argument.Amount set value -0.3
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/fire/add

# 全装備を再チェック
    tag @s add Believe.Changed
