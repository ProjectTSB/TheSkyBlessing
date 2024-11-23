#> player_manager:god/urban/believe
#
#
#
# @within
#   function player_manager:god/change_believe/believe2
#   function debug:change_believe/urban

# 信仰タグ付与
    tag @s add Believe.Urban
# 物理攻撃+20%
    data modify storage api: Argument.UUID set value [2, 1, 1, 13]
    data modify storage api: Argument.Amount set value 0.20
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/physical/add
# 火攻撃+10%
    data modify storage api: Argument.UUID set value [2, 1, 1, 13]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/fire/add
# 魔法攻撃-20%
    data modify storage api: Argument.UUID set value [2, 1, 1, 13]
    data modify storage api: Argument.Amount set value -0.2
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/magic/add
# 被回復-15%
    data modify storage api: Argument.UUID set value [2, 1, 1, 13]
    data modify storage api: Argument.Amount set value -0.15
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/receive_heal/add

# 全装備を再チェック
    tag @s add Believe.Changed
