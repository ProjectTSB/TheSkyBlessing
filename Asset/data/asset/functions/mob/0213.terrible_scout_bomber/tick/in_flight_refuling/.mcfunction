#> asset:mob/0213.terrible_scout_bomber/tick/in_flight_refuling/
#
# @within asset:mob/0213.terrible_scout_bomber/tick/2.tick

#
    say refuel

# move to standby phase
    execute if score $PhaseTime Temporary matches 20.. run scoreboard players set @s 5X.ActionPhase 1
    execute if score $PhaseTime Temporary matches 20.. store result score @s 5X.PhStartTime run time query gametime