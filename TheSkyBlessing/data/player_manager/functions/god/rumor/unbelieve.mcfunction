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

# PassiveBuffの補正を削除
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