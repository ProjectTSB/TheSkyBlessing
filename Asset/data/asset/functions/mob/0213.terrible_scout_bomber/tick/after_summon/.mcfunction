#> asset:mob/0213.terrible_scout_bomber/tick/after_summon/
#
# @within asset:mob/0213.terrible_scout_bomber/tick/2.tick

#
    #say after summon

# display particle


# move to above


# move to standby phase
    execute if score $PhaseTime Temporary matches 120.. run scoreboard players set @s 5X.ActionPhase 1
    execute if score $PhaseTime Temporary matches 120.. store result score @s 5X.PhStartTime run time query gametime