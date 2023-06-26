#> player_manager:god/urban/unbelieve
#
#
#
# @within
#   function player_manager:god/change_believe/unbelieve2
#   function debug:change_believe/none

# 信仰タグ削除
    tag @s remove Believe.Urban
# 物理攻撃+25%
    data modify storage api: Argument.UUID set value [2, 1, 1, 13]
    function api:modifier/attack/physical/remove
# 火攻撃+10%
    data modify storage api: Argument.UUID set value [2, 1, 1, 13]
    function api:modifier/attack/fire/remove
# 魔法攻撃-20%
    data modify storage api: Argument.UUID set value [2, 1, 1, 13]
    function api:modifier/attack/magic/remove
# ノックバック軽減+30%
    attribute @s generic.knockback_resistance modifier remove 1-0-2-0-d