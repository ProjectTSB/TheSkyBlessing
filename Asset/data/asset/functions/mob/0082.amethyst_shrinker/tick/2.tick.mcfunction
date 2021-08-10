#> asset:mob/0082.amethyst_shrinker/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0082.amethyst_shrinker/tick/1.trigger

# スコア
    scoreboard players add @s 2A.Tick 1

# レーザー(再帰有り)
    execute if score @s 2A.Tick matches 100.. run function asset:mob/0082.amethyst_shrinker/tick/3.lazer