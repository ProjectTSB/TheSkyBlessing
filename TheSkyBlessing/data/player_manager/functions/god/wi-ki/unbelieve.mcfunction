#> player_manager:god/wi-ki/unbelieve
#
#
#
# @within
#   function player_manager:god/change_believe/change_process/unbelieve2
#   function debug:change_believe/none

# 信仰タグ削除
    tag @s remove Believe.Wi-ki
# 魔法攻撃+15%
    data modify storage api: Argument.UUID set value [2, 1, 1, 14]
    function api:modifier/attack/magic/remove
# 魔法耐性+20%
    data modify storage api: Argument.UUID set value [2, 1, 1, 14]
    function api:modifier/defense/magic/remove
# MP回復量+25%
    data modify storage api: Argument.UUID set value [2, 1, 1, 14]
    function api:modifier/mp_regen/remove
# 物理攻撃-30%
    data modify storage api: Argument.UUID set value [2, 1, 1, 14]
    function api:modifier/attack/physical/remove
# 火耐性-30%
    data modify storage api: Argument.UUID set value [2, 1, 1, 14]
    function api:modifier/defense/fire/remove
