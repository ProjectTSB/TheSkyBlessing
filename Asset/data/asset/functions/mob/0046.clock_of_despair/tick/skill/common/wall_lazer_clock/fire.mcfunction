#> asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/fire
#
#
#
# @within function
#   asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/tick
#   asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/fire

scoreboard players add $LazerDistance Temporary 1

function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/vfx

execute as @e[type=#lib:living,tag=Friend,tag=!PlayerShouldInvulnerable,tag=!Uninterferable,distance=..8] positioned ^ ^ ^-500 if entity @s[distance=..500.5] positioned ^ ^ ^1000 if entity @s[distance=..500.5] at @s run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/damage

execute if block ~ ~ ~ #lib:no_collision if score $LazerDistance Temporary matches ..79 positioned ^ ^ ^0.5 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/fire