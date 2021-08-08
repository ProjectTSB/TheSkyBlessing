#> asset:mob/0078.messenger_of_thunder/tick/5.lightning
#
#
#
# @within function asset:mob/0078.messenger_of_thunder/tick/2.tick

# 雷を召喚
    data modify storage api: Argument.ID set value 80
    function api:mob/summon
    execute facing entity @p[gamemode=!creative,gamemode=!spectator] eyes run tp @e[type=marker,scores={MobID=80},distance=..0.01] ~ ~1.5 ~ ~ ~

# 3回目ならスコアリセット
    execute if score @s 26.FarCount matches 104.. run scoreboard players reset @s 26.FarCount