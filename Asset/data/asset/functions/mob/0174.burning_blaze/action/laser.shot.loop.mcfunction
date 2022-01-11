#> asset:mob/0174.burning_blaze/action/laser.shot.loop
#
#
#
# @within function asset:mob/0174.burning_blaze/action/laser.shot
# @within function asset:mob/0174.burning_blaze/action/laser.shot.loop

particle end_rod ^ ^ ^ 0 0 0 0 1 force @a

execute positioned ^ ^ ^ run tag @a[gamemode=!creative,gamemode=!spectator,dx=1,dz=1] add Hit
execute unless entity @p[tag=Hit] positioned ^ ^ ^0.5 if entity @s[distance=..32] if block ^ ^ ^ #lib:no_collision run function asset:mob/0174.burning_blaze/action/laser.shot.loop