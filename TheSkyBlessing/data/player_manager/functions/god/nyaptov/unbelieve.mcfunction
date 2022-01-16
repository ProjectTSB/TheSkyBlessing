#> player_manager:god/nyaptov/unbelieve
#
#
#
# @within
#   function player_manager:god/change_believe/unbelieve2
#   function lib:debug/change_believe/none

# 信仰タグ削除
    tag @s remove Believe.Nyaptov
# 回復+30%
    data modify storage api: Argument.UUID set value [2, 1, 1, 11]
    function api:player_modifier/heal/remove
# 攻撃-20%
    data modify storage api: Argument.UUID set value [2, 1, 1, 11]
    function api:player_modifier/attack/base/remove
# 水耐性-10%
    data modify storage api: Argument.UUID set value [2, 1, 1, 11]
    function api:player_modifier/defense/water/remove