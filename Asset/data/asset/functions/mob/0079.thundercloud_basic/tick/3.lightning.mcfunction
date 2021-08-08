#> asset:mob/0079.thundercloud_basic/tick/3.lightning
#
#
#
# @within function asset:mob/0079.thundercloud_basic/tick/2.tick

# 雷を召喚
    data modify storage api: Argument.ID set value 80
    function api:mob/summon
    tp @e[type=marker,scores={MobID=80},distance=..0.01] ~ ~ ~ ~ 90