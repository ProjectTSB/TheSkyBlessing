#> asset:mob/0213.terrible_scout_bomber/tick/climb/
#
# @within asset:mob/0213.terrible_scout_bomber/tick/2.tick

#
    #say climb

# facing above
    execute if score $PhaseTime Temporary matches 1 at @s run tp @s ~ ~ ~ ~ 60

# move forward
    execute if score $PhaseTime Temporary matches 2..17 at @s run tp @s ^ ^0.5 ^

# stand up
    execute if score $PhaseTime Temporary matches 18.. at @s run tp @s ~ ~ ~ ~ 0

# move to standby phase
    execute if score $PhaseTime Temporary matches 18.. run scoreboard players set @s 5X.ActionPhase 1
    execute if score $PhaseTime Temporary matches 18.. store result score @s 5X.PhStartTime run time query gametime