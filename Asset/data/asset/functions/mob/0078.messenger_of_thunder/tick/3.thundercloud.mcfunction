#> asset:mob/0078.messenger_of_thunder/tick/3.thundercloud
#
#
#
# @within function asset:mob/0078.messenger_of_thunder/tick/2.tick

# 雷雲を召喚
    data modify storage api: Argument.ID set value 79
    function api:mob/summon
    execute facing entity @p[gamemode=!creative,gamemode=!spectator] feet run tp @e[type=marker,scores={MobID=79},distance=..0.01] ~ ~ ~ ~ ~

# スコアリセット
    scoreboard players reset @s 26.Tick