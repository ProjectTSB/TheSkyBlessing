#> asset:mob/0188.fireball/event/break
#
# 消える処理
#
# @within function asset:mob/0188.fireball/**

execute positioned ^ ^ ^-1 run particle smoke ~ ~ ~ 0 0 0 0.05 10
kill @s