#> player_manager:god/wi-ki/unbelieve
#
#
#
# @within
#   function player_manager:god/change_believe/unbelieve2
#   function lib:debug/change_believe/none

# 信仰タグ削除
    tag @s remove Believe.Wi-ki
# 魔法攻撃+15%
    data modify storage api: Argument.UUID set value [2, 1, 1, 14]
    function api:player_modifier/attack/magic/remove
# 魔法耐性+20%
    data modify storage api: Argument.UUID set value [2, 1, 1, 14]
    function api:player_modifier/defense/magic/remove
# 火耐性-30%
    data modify storage api: Argument.UUID set value [2, 1, 1, 14]
    function api:player_modifier/defense/fire/remove