#> asset:mob/0314.blazing_bomb/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0314.blazing_bomb/tick/1.trigger


# Tick加算
    scoreboard players add @s 8Q.Tick 1

# 飛翔モード
    execute if entity @s[tag=!8Q.AOE] run function asset:mob/0314.blazing_bomb/tick/event/fireball/

# 残留モード
    execute if entity @s[tag=8Q.AOE] run function asset:mob/0314.blazing_bomb/tick/event/lingering/
