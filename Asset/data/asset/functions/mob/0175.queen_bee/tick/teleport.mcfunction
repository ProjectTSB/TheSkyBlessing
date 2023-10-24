#> asset:mob/0175.queen_bee/tick/teleport
#
#
#
# @within function asset:mob/0175.queen_bee/tick/**

# 演出
   particle dragon_breath ~ ~1 ~ 0.5 0.5 0.5 0 10 normal @a
   playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.7 0.9 0

# テレポート
    function asset:mob/0175.queen_bee/tick/move/spread
