#> asset:mob/0213.terrible_scout_bomber/tick/select_target/
#
# @within asset:mob/0213.terrible_scout_bomber/tick/2.tick

#> prv
# @private
    #declare tag 5X.Target

# get attackable players
    execute as @a[distance=..100] at @s run function asset:mob/0213.terrible_scout_bomber/tick/select_target/is_attackable

# get uuid of target player
    tag @r[gamemode=!spectator,tag=5X.Attackable,distance=..100,limit=1] add 5X.Target
    execute at @s run scoreboard players operation @s 5X.TargetId = @p[gamemode=!spectator,tag=5X.Target,distance=..100] UserID

# select action
    # if Kamikazeable => kamikaze
    # else if RocketLaunchable => rocket
    # else if shootable => gun
    # else if Bombable => bomb
    # else if existing player within 100 blocks => in-flight refueling
    # else => standby
    execute if entity @p[gamemode=!spectator,tag=5X.Target,tag=5X.RocketLaunchable,tag=!5X.Kamikazeable,distance=..100] run scoreboard players set @s 5X.ActionPhase 4
    execute if entity @p[gamemode=!spectator,tag=5X.Target,tag=5X.Shootable,tag=!5X.RocketLaunchable,tag=!5X.Kamikazeable,distance=..100] run scoreboard players set @s 5X.ActionPhase 3
    execute if entity @p[gamemode=!spectator,tag=5X.Target,tag=5X.Bombable,tag=!5X.Shootable,tag=!5X.RocketLaunchable,tag=!5X.Kamikazeable,distance=..100] run scoreboard players set @s 5X.ActionPhase 5
    execute unless entity @p[gamemode=!spectator,tag=5X.Target,distance=..100] if entity @a[distance=..100] run scoreboard players set @s 5X.ActionPhase 8
    execute unless entity @p[gamemode=!spectator,tag=5X.Target,distance=..100] unless entity @a[distance=..100] run scoreboard players set @s 5X.ActionPhase 2
    execute store result score @s 5X.PhStartTime run time query gametime

# reset score
    scoreboard players reset $5X.ExistObstacle Temporary
    tag @a[tag=5X.Target] remove 5X.Target
    tag @a[tag=5X.Attackable] remove 5X.Attackable
    tag @a[tag=5X.RocketLaunchable] remove 5X.RocketLaunchable
    tag @a[tag=5X.Bombable] remove 5X.Bombable