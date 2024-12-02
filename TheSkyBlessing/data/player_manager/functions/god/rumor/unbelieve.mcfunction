#> player_manager:god/rumor/unbelieve
#
#
#
# @within
#   function player_manager:god/change_believe/unbelieve2
#   function debug:change_believe/none

# 信仰タグ削除
    tag @s remove Believe.Rumor
# 雷耐性-15%
    data modify storage api: Argument.UUID set value [2, 1, 1, 12]
    function api:modifier/defense/thunder/remove
# 攻撃-10%
    data modify storage api: Argument.UUID set value [2, 1, 1, 12]
    function api:modifier/attack/base/remove

# PassiveBuffの補正を削除
    function player_manager:god/rumor/passive/remove
