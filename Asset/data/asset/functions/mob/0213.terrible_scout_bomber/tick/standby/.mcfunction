#> asset:mob/0213.terrible_scout_bomber/tick/standby/
#
# @within asset:mob/0213.terrible_scout_bomber/tick/2.tick

# move to selecting target phase
    execute if score $phase_time Temporary matches 120.. run scoreboard players set @s 5X.ActionPhase 2
    execute if score $phase_time Temporary matches 120.. store result score @s 5X.PhStartTime run time query gametime