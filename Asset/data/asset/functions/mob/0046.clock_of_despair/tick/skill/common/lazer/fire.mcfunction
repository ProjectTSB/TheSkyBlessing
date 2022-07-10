#> asset:mob/0046.clock_of_despair/tick/skill/common/lazer/fire
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/common/lazer/tick

scoreboard players add @s 1A.LifeTime 1
function asset:mob/0046.clock_of_despair/tick/skill/common/lazer/vfx
execute as @e[type=#lib:living,tag=Friend,tag=!PlayerShouldInvulnerable,tag=!Uninterferable,distance=..8] positioned ^ ^ ^-500 if entity @s[distance=..500.5] positioned ^ ^ ^1000 if entity @s[distance=..500.5] at @s run function asset:mob/0046.clock_of_despair/tick/skill/common/lazer/damage
tp @s ^ ^ ^0.5

execute at @s unless block ~ ~ ~ #lib:no_collision run kill @s
execute if score @s 1A.LifeTime matches 80.. run kill @s