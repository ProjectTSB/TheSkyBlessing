#> asset:mob/0213.terrible_scout_bomber/tick/gun/
#
# @within asset:mob/0213.terrible_scout_bomber/tick/2.tick

#> prv
# @private
    #declare score_holder $5X.TpSuccess

# move to front of target
    execute if score $PhaseTime Temporary matches 1 as @a[distance=..100] if score @s UserID = @e[tag=this,distance=..0.1,limit=1] 5X.TargetId at @s rotated ~ 0 positioned ^ ^ ^16 positioned ~ ~2 ~ facing ^ ^ ^-1 store result score $5X.TpSuccess Temporary run tp @e[tag=this,limit=1] ~ ~ ~ ~ 0
# move to standby phase if no target found
    execute if score $PhaseTime Temporary matches 1 unless score $5X.TpSuccess Temporary matches 0.. run scoreboard players set @s 5X.ActionPhase 1
    execute if score $PhaseTime Temporary matches 1 unless score $5X.TpSuccess Temporary matches 0.. store result score @s 5X.PhStartTime run time query gametime

# set attack position
    execute if score $PhaseTime Temporary matches 20 as @a[distance=..30] if score @s UserID = @e[tag=this,distance=..0.1,limit=1] 5X.TargetId run function asset:mob/0213.terrible_scout_bomber/tick/gun/set_shot_position
    execute if score $PhaseTime Temporary matches 25 as @a[distance=..30] if score @s UserID = @e[tag=this,distance=..0.1,limit=1] 5X.TargetId run function asset:mob/0213.terrible_scout_bomber/tick/gun/set_shot_position
    execute if score $PhaseTime Temporary matches 30 as @a[distance=..30] if score @s UserID = @e[tag=this,distance=..0.1,limit=1] 5X.TargetId run function asset:mob/0213.terrible_scout_bomber/tick/gun/set_shot_position
    execute if score $PhaseTime Temporary matches 35 as @a[distance=..30] if score @s UserID = @e[tag=this,distance=..0.1,limit=1] 5X.TargetId run function asset:mob/0213.terrible_scout_bomber/tick/gun/set_shot_position
    execute if score $PhaseTime Temporary matches 40 as @a[distance=..30] if score @s UserID = @e[tag=this,distance=..0.1,limit=1] 5X.TargetId run function asset:mob/0213.terrible_scout_bomber/tick/gun/set_shot_position
    execute if score $PhaseTime Temporary matches 45 as @a[distance=..30] if score @s UserID = @e[tag=this,distance=..0.1,limit=1] 5X.TargetId run function asset:mob/0213.terrible_scout_bomber/tick/gun/set_shot_position
    execute if score $PhaseTime Temporary matches 50 as @a[distance=..30] if score @s UserID = @e[tag=this,distance=..0.1,limit=1] 5X.TargetId run function asset:mob/0213.terrible_scout_bomber/tick/gun/set_shot_position
    execute if score $PhaseTime Temporary matches 55 as @a[distance=..30] if score @s UserID = @e[tag=this,distance=..0.1,limit=1] 5X.TargetId run function asset:mob/0213.terrible_scout_bomber/tick/gun/set_shot_position
    execute if score $PhaseTime Temporary matches 60 as @a[distance=..30] if score @s UserID = @e[tag=this,distance=..0.1,limit=1] 5X.TargetId run function asset:mob/0213.terrible_scout_bomber/tick/gun/set_shot_position
    execute if score $PhaseTime Temporary matches 65 as @a[distance=..30] if score @s UserID = @e[tag=this,distance=..0.1,limit=1] 5X.TargetId run function asset:mob/0213.terrible_scout_bomber/tick/gun/set_shot_position
    execute if score $PhaseTime Temporary matches 70 as @a[distance=..30] if score @s UserID = @e[tag=this,distance=..0.1,limit=1] 5X.TargetId run function asset:mob/0213.terrible_scout_bomber/tick/gun/set_shot_position
    execute if score $PhaseTime Temporary matches 75 as @a[distance=..30] if score @s UserID = @e[tag=this,distance=..0.1,limit=1] 5X.TargetId run function asset:mob/0213.terrible_scout_bomber/tick/gun/set_shot_position
    execute if score $PhaseTime Temporary matches 80 as @a[distance=..30] if score @s UserID = @e[tag=this,distance=..0.1,limit=1] 5X.TargetId run function asset:mob/0213.terrible_scout_bomber/tick/gun/set_shot_position
    execute if score $PhaseTime Temporary matches 85 as @a[distance=..30] if score @s UserID = @e[tag=this,distance=..0.1,limit=1] 5X.TargetId run function asset:mob/0213.terrible_scout_bomber/tick/gun/set_shot_position
    execute if score $PhaseTime Temporary matches 90 as @a[distance=..30] if score @s UserID = @e[tag=this,distance=..0.1,limit=1] 5X.TargetId run function asset:mob/0213.terrible_scout_bomber/tick/gun/set_shot_position
    execute if score $PhaseTime Temporary matches 95 as @a[distance=..30] if score @s UserID = @e[tag=this,distance=..0.1,limit=1] 5X.TargetId run function asset:mob/0213.terrible_scout_bomber/tick/gun/set_shot_position
    execute if score $PhaseTime Temporary matches 100 as @a[distance=..30] if score @s UserID = @e[tag=this,distance=..0.1,limit=1] 5X.TargetId run function asset:mob/0213.terrible_scout_bomber/tick/gun/set_shot_position
    execute if score $PhaseTime Temporary matches 105 as @a[distance=..30] if score @s UserID = @e[tag=this,distance=..0.1,limit=1] 5X.TargetId run function asset:mob/0213.terrible_scout_bomber/tick/gun/set_shot_position
    execute if score $PhaseTime Temporary matches 110 as @a[distance=..30] if score @s UserID = @e[tag=this,distance=..0.1,limit=1] 5X.TargetId run function asset:mob/0213.terrible_scout_bomber/tick/gun/set_shot_position
    execute if score $PhaseTime Temporary matches 115 as @a[distance=..30] if score @s UserID = @e[tag=this,distance=..0.1,limit=1] 5X.TargetId run function asset:mob/0213.terrible_scout_bomber/tick/gun/set_shot_position

# manage GunShotPosition
    execute as @e[type=area_effect_cloud,tag=5X.GunShotPosition,distance=..30] at @s run function asset:mob/0213.terrible_scout_bomber/tick/gun/manage_shot_position

# move to selecting target phase
    execute if score $PhaseTime Temporary matches 125.. run scoreboard players set @s 5X.ActionPhase 1
    execute if score $PhaseTime Temporary matches 125.. store result score @s 5X.PhStartTime run time query gametime

# reset score
    execute if score $PhaseTime Temporary matches 1 run scoreboard players reset $5X.TpSuccess Temporary
