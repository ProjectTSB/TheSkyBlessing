#> asset:mob/0082.amethyst_shrinker/tick/3.lazer
#
#
#
# @within function asset:mob/0082.amethyst_shrinker/tick/2.tick

# 前方拡散
    function asset:mob/0082.amethyst_shrinker/tick/5.forward_spread

# 再帰
    execute facing entity @e[type=marker,tag=2A.SpreadMarker,limit=1] feet positioned ~ ~1.75 ~ run function asset:mob/0082.amethyst_shrinker/tick/4.recursion
    scoreboard players reset @s 2A.LazerTick

# スコアリセット
    execute if score @s 2A.Tick matches 2.. run scoreboard players reset @s 2A.Tick

# リセット
    kill @e[type=marker,tag=2A.SpreadMarker]