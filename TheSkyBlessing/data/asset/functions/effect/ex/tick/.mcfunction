#> asset:effect/ex/tick/
#
#
#
# @within function asset:effect/ex/_/tick
say tick

particle dust 1 0.6 0.8 0.4 ~ ~1 ~ 0.4 0.7 0.4 1 2

scoreboard players add @s ZIK0ZJ.Tick 1
scoreboard players operation @s ZIK0ZJ.Tick %= $4 Const
execute if score @s ZIK0ZJ.Tick matches 0 run function asset:effect/ex/tick/heal