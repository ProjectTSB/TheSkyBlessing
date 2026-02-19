#> player_manager:god/rumor/passive/remove
#
#
#
# @within function
#   player_manager:god/rumor/passive/
#   player_manager:god/rumor/unbelieve

# タグ削除
    tag @s remove PassiveBuff
# 攻撃+25%
    data modify storage api: Argument.UUID set value [1, 2, 1, 12]
    function api:modifier/attack/base/remove
# MP回復量+30%
    data modify storage api: Argument.UUID set value [1, 2, 1, 12]
    function api:modifier/mp_regen/remove
