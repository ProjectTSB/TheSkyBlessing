#> asset:mob/0131.haruclaire/tick/teleport
#
# テレポ。レクシエルと一緒
#
# @within function asset:mob/0131.haruclaire/tick/**

# 演出
   particle minecraft:dust 0.569 0.957 1 1 ~ ~ ~ 0.8 0.8 0.8 0.1 20 normal @a
   playsound minecraft:block.glass.break hostile @a

# ワープ
    function asset:mob/0131.haruclaire/tick/move/spread