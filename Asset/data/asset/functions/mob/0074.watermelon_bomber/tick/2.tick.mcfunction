#> asset:mob/0074.watermelon_bomber/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0074.watermelon_bomber/tick/1.trigger

# スイカ投げのためスコア
    execute if entity @a[gamemode=!creative,gamemode=!spectator,distance=..20] run scoreboard players add @s 22.Tick 1

# スイカ投げ
    execute if score @s 22.Tick matches 60.. run function asset:mob/0074.watermelon_bomber/tick/3.throw_watermelon