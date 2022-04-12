#> player_manager:god/rumor/unbelieve
#
#
#
# @within
#   function player_manager:god/change_believe/unbelieve2
#   function lib:debug/change_believe/none

# 信仰タグ削除
    tag @s remove Believe.Rumor
# 雷攻撃+15%
    data modify storage api: Argument.UUID set value [2, 1, 1, 12]
    function api:player_modifier/attack/thunder/remove
# 雷耐性-15%
    data modify storage api: Argument.UUID set value [2, 1, 1, 12]
    function api:player_modifier/defense/thunder/remove
# 攻撃-10%
    data modify storage api: Argument.UUID set value [2, 1, 1, 12]
    function api:player_modifier/attack/base/remove
# 耐性-10%
    data modify storage api: Argument.UUID set value [2, 1, 1, 12]
    function api:player_modifier/defense/base/remove