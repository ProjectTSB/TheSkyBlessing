#> asset:mob/0059.jack_o_lantern/tick/3.missile/3.tackle
#
#
#
# @within function
#        asset:mob/0059.jack_o_lantern/tick/3.missile/1.missile
#        asset:mob/0059.jack_o_lantern/tick/3.missile/3.tackle

#> tag
# @private
    #declare tag Landing
    #declare tag LandingTarget

# 検知
    execute if entity @p[gamemode=!spectator,distance=..2] run tag @s add Landing
    execute unless block ^ ^ ^1 #lib:no_collision run tag @s add Landing

# 着弾時に発動
    execute if entity @s[tag=Landing] if entity @p[gamemode=!spectator,distance=..2] run function asset:mob/0059.jack_o_lantern/tick/3.missile/4.damage
    execute if entity @s[tag=Landing] unless entity @p[gamemode=!spectator,distance=..2] run function asset:mob/0059.jack_o_lantern/tick/3.missile/5.suicide

# パーティクル
    particle explosion ~ ~ ~ 0 0 0 0 0

# 再起
    execute positioned ^ ^ ^1 if entity @s[tag=!Landing,distance=..15] run function asset:mob/0059.jack_o_lantern/tick/3.missile/3.tackle