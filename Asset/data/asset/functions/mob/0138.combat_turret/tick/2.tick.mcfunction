#> asset:mob/0138.combat_turret/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0138.combat_turret/tick/1.trigger

# スコアを増やします
    scoreboard players add @s 3U.Time 1

# 発砲準備でNoAIにする
    execute if score @s 3U.Time matches 80 run data modify entity @s NoAI set value 1

# 発砲します
    execute if score @s 3U.Time matches 90 positioned ^ ^-0.7 ^ run function asset:mob/0138.combat_turret/tick/2.1.ready
    execute if score @s 3U.Time matches 92 positioned ^ ^-0.7 ^ run function asset:mob/0138.combat_turret/tick/2.1.ready
    execute if score @s 3U.Time matches 94 positioned ^ ^-0.7 ^ run function asset:mob/0138.combat_turret/tick/2.1.ready

# 終了します
    execute if score @s 3U.Time matches 94 run function asset:mob/0138.combat_turret/tick/2.4.reset

