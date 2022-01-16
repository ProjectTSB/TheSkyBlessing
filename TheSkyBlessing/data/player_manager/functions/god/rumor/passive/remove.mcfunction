#> player_manager:god/rumor/passive/remove
#
#
#
# @within function player_manager:god/rumor/passive/

# タグ削除
    tag @s remove PassiveBuff
# 攻撃+30%
    data modify storage api: Argument.UUID set value [1, 2, 1, 12]
    function api:player_modifier/attack/base/remove
# 耐性+30%
    data modify storage api: Argument.UUID set value [1, 2, 1, 12]
    function api:player_modifier/defense/base/remove
# MP回復量+0.5
    data modify storage api: Argument.UUID set value [1, 2, 1, 12]
    function api:player_modifier/mp_regen/remove