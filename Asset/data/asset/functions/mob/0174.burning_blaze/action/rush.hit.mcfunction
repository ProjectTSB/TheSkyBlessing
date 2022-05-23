#> asset:mob/0174.burning_blaze/action/rush.hit
#
#
#
# @within function asset:mob/0174.burning_blaze/action/rush.tick

#> private
# @private
    #declare tag Hit

data modify storage lib: Argument set value {Damage:25,AttackType:Physical,AttackElement:Fire}
function lib:damage/modifier
execute as @a[tag=Hit] run function lib:damage/
data remove storage lib: Argument

scoreboard players set @s 4U.NowAction 0
scoreboard players set @s 4U.ActionTime 0
data modify entity @s NoAI set value false
effect clear @s invisibility

playsound block.anvil.land hostile @a ~ ~ ~ 2 0 0.5