#> asset:mob/0174.burning_blaze/action/shot
#
#
#
# @within function asset:mob/0174.burning_blaze/tick/2.tick

#> private
# @private
    #declare tag Spread

kill @e[type=small_fireball,distance=..3]

data modify storage api: Argument.ID set value 229
function api:mob/summon

summon marker ~ ~ ~ {Tags:[Spread]}
execute as @e[type=marker,tag=Spread] at @s facing entity @p[tag=!PlayerShouldInvulnerable] feet run tp @s ~ ~ ~ ~ ~
data modify storage lib: Argument set value {Distance:20,Spread:2}
execute as @e[type=marker,tag=Spread] at @s run function lib:forward_spreader/circle

execute as @e[type=area_effect_cloud,distance=..0.01,limit=1] facing entity @e[type=marker,tag=Spread,limit=1] feet anchored eyes positioned ^ ^ ^0.02 run tp @s ~ ~0.5 ~ ~ ~

kill @e[type=marker,tag=Spread]