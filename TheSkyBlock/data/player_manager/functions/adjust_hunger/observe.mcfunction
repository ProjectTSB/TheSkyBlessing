#> player_manager:adjust_hunger/observe
#
# Playerの満腹度を調節します
#
# @within function
#   player_manager:adjust_hunger/respawn.delay
#   player_manager:adjust_hunger/observe

execute as @a[tag=AdjustHunger,tag=!Death] if score @s Hunger = @s HungerTarget run effect clear @s saturation
execute as @a[tag=AdjustHunger,tag=!Death] if score @s Hunger = @s HungerTarget run tag @s remove AdjustHunger
execute if entity @a[tag=AdjustHunger,limit=1] run schedule function player_manager:adjust_hunger/observe 1t
