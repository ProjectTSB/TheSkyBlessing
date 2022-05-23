#> asset:mob/0174.burning_blaze/action/rush.tick
#
#
#
# @within function asset:mob/0174.burning_blaze/tick/2.tick


scoreboard players remove @s 4U.ActionTime 1

execute positioned ^ ^ ^0.5 positioned ~-1 ~-1 ~-1 run tag @a[tag=!PlayerShouldInvulnerable,dx=1,dz=1] add Hit
execute positioned ^ ^ ^0.5 run particle dripping_lava ~ ~0.5 ~ 0.2 0.2 0.2 0 10 normal
execute positioned ^ ^ ^1.0 positioned ~-1 ~-1 ~-1 run tag @a[tag=!PlayerShouldInvulnerable,dx=1,dz=1] add Hit
execute positioned ^ ^ ^1.0 run particle dripping_lava ~ ~0.5 ~ 0.2 0.2 0.2 0 10 normal

execute if score @s 4U.ActionTime matches 0 run function asset:mob/0174.burning_blaze/action/rush.hit
execute if score @s 4U.ActionTime matches ..40 unless block ^ ^ ^1.0 #lib:air run function asset:mob/0174.burning_blaze/action/rush.hit
execute if score @s 4U.ActionTime matches ..40 if entity @p[tag=Hit] run function asset:mob/0174.burning_blaze/action/rush.hit

tag @a[tag=Hit] remove Hit
execute if score @s 4U.ActionTime matches ..40 if block ^ ^ ^1.0 #lib:air run tp @s ^ ^ ^1.0