#> asset:mob/0213.terrible_scout_bomber/tick/rocket/
#
# @within asset:mob/0213.terrible_scout_bomber/tick/2.tick

#> prv
# @private
    #declare score_holder $5X.TpSuccess

# move to front of target
    execute if score $PhaseTime Temporary matches 1 as @a if score @s UserID = @e[tag=this,distance=..0.1,limit=1] 5X.TargetId at @s rotated ~ 0 positioned ^ ^ ^20 positioned ~ ~5 ~ facing entity @s eyes store result score $5X.TpSuccess Temporary run tp @e[tag=this,limit=1] ~ ~ ~ ~ 90
# move to standby phase if no target found
    execute if score $PhaseTime Temporary matches 1 unless score $5X.TpSuccess Temporary matches 0.. run scoreboard players set @s 5X.ActionPhase 1
    execute if score $PhaseTime Temporary matches 1 unless score $5X.TpSuccess Temporary matches 0.. store result score @s 5X.PhStartTime run time query gametime

# move forward
    execute if score $PhaseTime Temporary matches 2..31 at @s run tp @s ^ ^0.5 ^0.125 ~ 90

# launch rocket
    execute if score $PhaseTime Temporary matches 6 at @s positioned ^0.2 ^ ^-1 rotated ~ 14 run function asset:mob/0213.terrible_scout_bomber/tick/common/launch_rocket
    execute if score $PhaseTime Temporary matches 10 at @s positioned ^-0.2 ^ ^-1 rotated ~ 14 run function asset:mob/0213.terrible_scout_bomber/tick/common/launch_rocket
    execute if score $PhaseTime Temporary matches 14 at @s positioned ^0.4 ^ ^-1 rotated ~-10 14 run function asset:mob/0213.terrible_scout_bomber/tick/common/launch_rocket
    execute if score $PhaseTime Temporary matches 18 at @s positioned ^-0.4 ^ ^-1 rotated ~10 14 run function asset:mob/0213.terrible_scout_bomber/tick/common/launch_rocket
    execute if score $PhaseTime Temporary matches 22 at @s positioned ^0.6 ^ ^-1 rotated ~-20 14 run function asset:mob/0213.terrible_scout_bomber/tick/common/launch_rocket
    execute if score $PhaseTime Temporary matches 26 at @s positioned ^-0.6 ^ ^-1 rotated ~20 14 run function asset:mob/0213.terrible_scout_bomber/tick/common/launch_rocket

# move to climb phase
    execute if score $PhaseTime Temporary matches 32.. run scoreboard players set @s 5X.ActionPhase 7
    execute if score $PhaseTime Temporary matches 32.. store result score @s 5X.PhStartTime run time query gametime

# reset score
    execute if score $PhaseTime Temporary matches 1 run scoreboard players reset $5X.TpSuccess Temporary

