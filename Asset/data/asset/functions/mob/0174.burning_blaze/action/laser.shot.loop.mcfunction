#> asset:mob/0174.burning_blaze/action/laser.shot.loop
#
#
#
# @within function asset:mob/0174.burning_blaze/action/laser.shot
# @within function asset:mob/0174.burning_blaze/action/laser.shot.loop

particle dripping_lava ^ ^ ^ 0 0 0 0 5 force @a

execute positioned ~-1 ~-1 ~-1 run tag @a[tag=!PlayerShouldInvulnerable,dx=1,dz=1] add Hit
execute unless entity @p[tag=Hit] positioned ^ ^ ^0.5 if entity @s[distance=..32] if block ^ ^ ^ #lib:no_collision run function asset:mob/0174.burning_blaze/action/laser.shot.loop