#> asset:effect/ex/tick/
#
#
#
# @within function asset:effect/ex/_/tick

particle dust 1 0.6 0.8 1 ~ ~1 ~ 0.4 0.7 0.4 1 2

#> Private
# @private
    #declare score_holder $Tick

execute store result score $Tick Temporary run data get storage asset:context this.Tick

scoreboard players add $Tick Temporary 1
scoreboard players operation $Tick Temporary %= $4 Const

execute if score $Tick Temporary matches 0 run function asset:effect/ex/tick/heal

execute store result storage asset:context this.Tick int 1 run scoreboard players get $Tick Temporary
scoreboard players reset $Tick Temporary