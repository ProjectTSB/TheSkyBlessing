#> asset:mob/0174.burning_blaze/action/laser.shot
#
#
#
# @within function asset:mob/0174.burning_blaze/action/laser.tick

#> private
# @private
    #declare tag Line

data modify storage lib: Argument set value {Damage:30,AttackType:Physical,AttackElement:Fire}

execute facing entity @p[gamemode=!creative,gamemode=!spectator,distance=..32] feet anchored eyes run function asset:mob/0174.burning_blaze/action/laser.shot.loop

function lib:damage/modifier
execute as @a[tag=Hit] run function lib:damage/
data remove storage lib: Argument
tag @a[tag=Hit] remove Hit

scoreboard players set @s 4U.ActionTime 0
scoreboard players set @s 4U.NowAction 0

playsound entity.generic.explode hostile @a ~ ~ ~ 1 2 0.1