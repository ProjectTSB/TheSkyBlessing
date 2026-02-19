#> player_manager:god/wi-ki/passive/remove
#
#
#
# @within function player_manager:god/wi-ki/passive/

# タグ削除
    tag @s remove PassiveDebuff
# 耐性-50%
    data modify storage api: Argument.UUID set value [1, 2, 1, 14]
    function api:modifier/defense/base/remove
