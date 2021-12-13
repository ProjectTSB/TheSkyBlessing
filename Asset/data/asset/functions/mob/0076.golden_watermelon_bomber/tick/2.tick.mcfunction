#> asset:mob/0076.golden_watermelon_bomber/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0076.golden_watermelon_bomber/tick/1.trigger

# スコア
    scoreboard players add @s 24.Tick 1

# スイカ投げ
    execute if score @s 24.Tick matches 80.. run function asset:mob/0076.golden_watermelon_bomber/tick/3.throw_watermelon
