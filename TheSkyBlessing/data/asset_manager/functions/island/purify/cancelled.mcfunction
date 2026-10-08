#> asset_manager:island/purify/cancelled
#
#
#
# @within function
#   asset_manager:island/tick/
#   asset_manager:island/purify/
#   asset_manager:island/purify/boss/

execute if score @s PurifyTime matches 20.. as @p[predicate=lib:is_sneaking,distance=..2] at @s run playsound block.glass.break block @s ~ ~ ~ 1 2.0
scoreboard players reset @s PurifyTime
