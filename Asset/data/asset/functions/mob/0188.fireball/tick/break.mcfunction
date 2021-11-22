#> asset:mob/0188.fireball/tick/break
#
# 消える処理
#
# @within function asset:mob/0188.fireball/tick/move

scoreboard players reset @s Chuz.Range
execute positioned ^ ^ ^-1 run particle crit ~ ~ ~ 0 0 0 0.25 1
playsound minecraft:block.stone.break neutral @a ~ ~ ~ 1 1.25
kill @s