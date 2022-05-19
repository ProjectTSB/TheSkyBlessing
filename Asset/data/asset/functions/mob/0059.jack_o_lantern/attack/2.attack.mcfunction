#> asset:mob/0059.jack_o_lantern/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0059.jack_o_lantern/attack/1.trigger

# 演出
    playsound entity.witch.celebrate hostile @a ~ ~ ~ 0.8 1.8 0
    execute at @p[tag=Victim,distance=..6] run particle dust 1 0.651 0 1 ~ ~1.2 ~ 0.4 0.4 0.4 0 15 normal @a
    execute at @p[tag=Victim,distance=..6] run particle dust 0.851 0 1 1 ~ ~1.2 ~ 0.4 0.4 0.4 0 15 normal @a

# 不運を付与
    effect give @p[tag=Victim,distance=..6] unluck 15 2 false