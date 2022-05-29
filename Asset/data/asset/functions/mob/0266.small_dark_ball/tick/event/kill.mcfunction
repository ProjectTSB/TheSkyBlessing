#> asset:mob/0266.small_dark_ball/tick/event/kill
#
#
#
# @within function asset:mob/0266.small_dark_ball/tick/**

kill @s
kill @e[type=snowball,sort=nearest,limit=1]
particle minecraft:reverse_portal ~ ~ ~ 0 0 0 0.1 10