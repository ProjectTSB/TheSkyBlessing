#> asset:sacred_treasure/0915.flame_hunter_hat/trigger/common/dis_equip_2parts
#
# 2部位の補正を削除
#
# @within function asset:sacred_treasure/0915.flame_hunter_hat/trigger/common/dis_equip

# 火耐性
    data modify storage api: Argument.UUID set value [I;1,1,915,6]
    function api:player_modifier/defense/fire/remove

# 火攻撃
    data modify storage api: Argument.UUID set value [I;1,1,915,6]
    function api:player_modifier/attack/fire/remove

# 水耐性
    data modify storage api: Argument.UUID set value [I;1,1,915,6]
    function api:player_modifier/defense/water/remove

# 移動速度
    attribute @s generic.movement_speed modifier remove 00000001-0000-0001-0000-039300000001