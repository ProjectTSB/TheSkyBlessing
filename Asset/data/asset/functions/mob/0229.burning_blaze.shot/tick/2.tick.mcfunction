#> asset:mob/0229.burning_blaze.shot/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0229.burning_blaze.shot/tick/1.trigger

#> private
# @private
    #declare tag Hit

execute positioned ^ ^ ^0.5 positioned ~-0.5 ~-0.5 ~-0.5 run tag @a[gamemode=!creative,gamemode=!spectator,dx=1,dz=1] add Hit
execute positioned ^ ^ ^0.5 run particle flame ~ ~ ~ 0.1 0.1 0.1 0 3 normal
execute positioned ^ ^ ^1 positioned ~-0.5 ~-0.5 ~-0.5 run tag @a[gamemode=!creative,gamemode=!spectator,dx=1,dz=1] add Hit
execute positioned ^ ^ ^1 run particle flame ~ ~ ~ 0.1 0.1 0.1 0 3 normal

execute if entity @p[gamemode=!creative,gamemode=!spectator,tag=Hit,distance=..2] run function asset:mob/0229.burning_blaze.shot/hit

tag @p[tag=Hit] remove Hit
tp @s ^ ^ ^1
execute unless block ^ ^ ^1 #lib:air run kill @s