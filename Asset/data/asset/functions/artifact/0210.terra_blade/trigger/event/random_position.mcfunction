#> asset:artifact/0210.terra_blade/trigger/event/random_position
#
#
#
# @within function asset:artifact/0210.terra_blade/trigger/event/summon_shot

#> SpreadLib
# @private
#declare tag SpreadMarker

    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 0.5f
    data modify storage lib: Argument.Spread set value 1.5f
    execute as @e[type=marker,tag=SpreadMarker,limit=1] at @p[tag=5U.This] anchored eyes positioned ^ ^ ^ run function lib:forward_spreader/circle
    execute at @e[type=marker,tag=SpreadMarker,limit=1] run summon armor_stand ^-0.35 ^-0.25 ^ {Marker:1b,Invisible:1b,Tags:["5U.ShotInit","Projectile","Uninterferable"]}
