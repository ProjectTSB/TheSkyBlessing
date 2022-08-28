#> asset:mob/0129.lexiel/tick/2.1.teleport
#
# テレポート
#
# @within function asset:mob/0129.lexiel/tick/**

# 演出
   particle minecraft:dust 1 1 0 1 ~ ~ ~ 0.8 0.8 0.8 0.1 20 normal @a
   particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0 10 normal @a
   playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.7 1.4 0
   playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.7 0.9 0

# テレポートする
    function asset:mob/0129.lexiel/tick/move/spread