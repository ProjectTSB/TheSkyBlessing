#> asset:mob/0059.jack_o_lantern/tick/3.missile/2.check
#
#
#
# @within function
#        asset:mob/0059.jack_o_lantern/tick/3.missile/1.missile
#        asset:mob/0059.jack_o_lantern/tick/3.missile/2.check

#> tag
# @private
    #declare tag Landing
    #declare tag LandingTarget

# レーザー投射
    execute if entity @p[gamemode=!spectator,distance=..2] run tag @s add Landing
    execute unless block ^ ^ ^1 #lib:no_collision run tag @s add Landing

# 演出
    execute if entity @p[gamemode=!spectator,distance=..2] run playsound block.note_block.bit hostile @p ~ ~ ~ 0.5 2
    particle minecraft:dust 0.58 0 0 0.75 ~ ~ ~ 0 0 0 0 1

# 再起
    execute positioned ^ ^ ^1 if entity @s[tag=!Landing,distance=..15] run function asset:mob/0059.jack_o_lantern/tick/3.missile/2.check