#> asset:mob/0229.burning_blaze.shot/hit
#
#
#
# @within function asset:mob/0229.burning_blaze.shot/tick/2.tick

#> private
# @private
    #declare tag Hit

data modify storage lib: Argument set value {Damage:22,AttackType:Physical,AttackElement:Fire}
function lib:damage/modifier
execute as @a[tag=Hit,distance=..2] run function lib:damage/
data remove storage lib: Argument