#> asset:mob/0213.terrible_scout_bomber/tick/bomb/
#
# @within asset:mob/0213.terrible_scout_bomber/tick/2.tick

#> prv
# @private
    #declare score_holder $5X.TpSuccess

# move to above of target
    execute if score $PhaseTime Temporary matches 1 as @a if score @s UserID = @e[tag=this,distance=..0.1,limit=1] 5X.TargetId at @s rotated ~90 0 positioned ^ ^ ^10 positioned ~ ~10 ~ facing ^ ^ ^-1 store result score $5X.TpSuccess Temporary run tp @e[tag=this,limit=1] ~ ~ ~ ~ ~
    execute if score $PhaseTime Temporary matches 1 at @s run tp @s ~ ~ ~ ~ 90
# move to standby phase if no target found
    execute if score $PhaseTime Temporary matches 1 unless score $5X.TpSuccess Temporary matches 0.. run scoreboard players set @s 5X.ActionPhase 1
    execute if score $PhaseTime Temporary matches 1 unless score $5X.TpSuccess Temporary matches 0.. store result score @s 5X.PhStartTime run time query gametime

# move forward
    execute if score $PhaseTime Temporary matches 2..41 at @s run tp @s ^ ^0.5 ^ ~ 90

# drop bomb
    #TODO: summon mob 0234
    execute if score $PhaseTime Temporary matches 7 at @s run say drop
    execute if score $PhaseTime Temporary matches 17 at @s run say drop
    execute if score $PhaseTime Temporary matches 27 at @s run say drop
    execute if score $PhaseTime Temporary matches 37 at @s run say drop

# stand up
    execute if score $PhaseTime Temporary matches 42 at @s run tp @s ^ ^0.5 ^ ~ 0

# move to selecting target phase
    execute if score $PhaseTime Temporary matches 43.. run scoreboard players set @s 5X.ActionPhase 1
    execute if score $PhaseTime Temporary matches 43.. store result score @s 5X.PhStartTime run time query gametime

# reset score
    execute if score $PhaseTime Temporary matches 1 run scoreboard players reset $5X.TpSuccess Temporary
