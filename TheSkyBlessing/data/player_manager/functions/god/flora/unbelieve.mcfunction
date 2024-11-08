#> player_manager:god/flora/unbelieve
#
#
#
# @within
#   function player_manager:god/change_believe/unbelieve2
#   function debug:change_believe/none

# 信仰タグ削除
    tag @s remove Believe.Flora
# 水攻撃+20%
    data modify storage api: Argument.UUID set value [2, 1, 1, 10]
    function api:modifier/attack/water/remove
# 水耐性+20%
    data modify storage api: Argument.UUID set value [2, 1, 1, 10]
    function api:modifier/defense/water/remove
# 火耐性-20%
    data modify storage api: Argument.UUID set value [2, 1, 1, 10]
    function api:modifier/defense/fire/remove

# 固有スコアリセット
    scoreboard players reset @s FloraFoodRegenCooldown
