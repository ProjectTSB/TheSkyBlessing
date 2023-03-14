#> asset:artifact/0915.flame_hunter_hat/trigger/common/dis_equip_4parts
#
# 4部位の補正を削除
#
# @within function asset:artifact/0915.flame_hunter_hat/trigger/common/dis_equip

# 火耐性
    data modify storage api: Argument.UUID set value [I;1,2,915,6]
    function api:modifier/defense/fire/remove

# 火攻撃
    data modify storage api: Argument.UUID set value [I;1,2,915,6]
    function api:modifier/attack/fire/remove

# 水耐性
    data modify storage api: Argument.UUID set value [I;1,2,915,6]
    function api:modifier/defense/water/remove

# 移動速度
    attribute @s generic.movement_speed modifier remove 00000001-0000-0002-0000-039300000001