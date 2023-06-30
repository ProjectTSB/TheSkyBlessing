#> asset:mob/0316.blazing_mine/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0316.blazing_mine/tick/1.trigger

# Tick加算
    scoreboard players add @s 8S.Tick 1

# パーティクル
    particle smoke ~ ~0.5 ~ 0.05 0 0.05 0 1 force @a[distance=..30]
    particle flame ~ ~0.7 ~ 0 0 0 0 1 force @a[distance=..30]

# 一定のTickになったらカウント開始
    execute if score @s[tag=!8S.Ready] 8S.Tick matches 200.. run function asset:mob/0316.blazing_mine/tick/event/bomb/start

# 爆破予告Tick動作
    execute if entity @s[tag=8S.Ready] run function asset:mob/0316.blazing_mine/tick/event/bomb/tick