#> asset:mob/0174.burning_blaze/action/laser.tick
#
#
#
# @within function asset:mob/0174.burning_blaze/tick/2.tick

#> private
# @private
    #declare tag Line

scoreboard players remove @s 4U.ActionTime 1

execute facing entity @p[gamemode=!creative,gamemode=!spectator,distance=..32] feet anchored eyes run function asset:mob/0174.burning_blaze/action/laser.line

execute if score @s 4U.ActionTime matches ..0 run function asset:mob/0174.burning_blaze/action/laser.shot