#> player_manager:god/flora/unbelieve
#
#
#
# @within
#   function player_manager:god/change_believe/unbelieve2
#   function lib:debug/change_believe/none

# 信仰タグ削除
    tag @s remove Believe.Flora
# 水攻撃+20%
    data modify storage api: Argument.UUID set value [2, 1, 1, 10]
    function api:player_modifier/attack/water/remove
# 水耐性+20%
    data modify storage api: Argument.UUID set value [2, 1, 1, 10]
    function api:player_modifier/defense/water/remove
# 火耐性-20%
    data modify storage api: Argument.UUID set value [2, 1, 1, 10]
    function api:player_modifier/defense/fire/remove