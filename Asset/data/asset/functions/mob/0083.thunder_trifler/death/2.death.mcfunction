#> asset:mob/0083.thunder_trifler/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0083.thunder_trifler/death/1.trigger

# 演出
   particle minecraft:dust 1 1 0 1 ~ ~ ~ 0.8 0.8 0.8 0.1 20 normal @a
   playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.7 1.0 0
   playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.7 0.8 0
