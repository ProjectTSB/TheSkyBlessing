#> asset:mob/1004.tultaria/tick/wait_time/opening/battle_start
#
# 戦闘開始する
#
# @within function asset:mob/1004.tultaria/tick/wait_time/opening/tick

tag @s remove RW.Opening
tag @s add RW.Phase1
data modify entity @s Invulnerable set value 0b
function asset:mob/1004.tultaria/tick/reset
scoreboard players reset @s RW.Tick