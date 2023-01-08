#> player_manager:god/urban/believe
#
#
#
# @within
#   function player_manager:god/change_believe/believe2
#   function debug:change_believe/urban

# 信仰タグ付与
    tag @s add Believe.Urban
# 物理攻撃+25%
    data modify storage api: Argument.UUID set value [2, 1, 1, 13]
    data modify storage api: Argument.Amount set value 0.25
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
# ノックバック軽減+30%
    attribute @s generic.knockback_resistance modifier add 1-0-2-0-d "Urban believe bonus" 0.3 multiply_base