#> asset:mob/0082.amethyst_shrinker/tick/3.lazer
#
#
#
# @within function asset:mob/0082.amethyst_shrinker/tick/2.tick

# 再帰
    execute facing entity @p[gamemode=!creative,gamemode=!spectator] feet positioned ~ ~1.75 ~ run function asset:mob/0082.amethyst_shrinker/tick/4.recursion
    scoreboard players reset @s 2A.LazerTick

# スコアリセット
    execute if score @s 2A.Tick matches 2.. run scoreboard players reset @s 2A.Tick