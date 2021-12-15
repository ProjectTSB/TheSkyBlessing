#> asset:mob/0156.infringement/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0156.infringement/tick/1.trigger

# 周囲にプレイヤーがいたらスコアを増やす
    execute if entity @a[distance=..6] unless entity @s[tag=4C.Alert] run scoreboard players add @s 4C.Tick 1
# タグがついたら強制的に増え続ける
    execute if entity @s[tag=4C.Alert] run scoreboard players add @s 4C.Tick 1

# 一定時間で発動
    execute if score @s 4C.Tick matches 70 run function asset:mob/0156.infringement/tick/3.alert

# 自爆する
    execute if score @s 4C.Tick matches 100 run function asset:mob/0156.infringement/tick/4.explode