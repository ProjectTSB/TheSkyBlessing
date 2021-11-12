#> asset:mob/0155.immorality/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0155.immorality/tick/1.trigger

# スコアを増やします
    scoreboard players add @s 4B.ShotTime 1

# 発砲準備で移動できなく
    execute if score @s 4B.ShotTime matches 87 run effect give @s slowness 1 100 true

# 発砲します
    execute if entity @a[distance=..20] if score @s 4B.ShotTime matches 90 positioned ^-0.3 ^ ^0.2 run function asset:mob/0155.immorality/tick/2.1.ready

# 終了します
    execute if score @s 4B.ShotTime matches 94 run function asset:mob/0155.immorality/tick/2.4.reset

