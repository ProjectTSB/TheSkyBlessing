#> asset:mob/0327.eclael/tick/app.general/9.1.lightning_fast_effect_trail
#
# 汎用処理 電光石火時の演出
#
# @within asset:mob/0327.eclael/tick/**

# 演出
    particle dust 100000000 100000000 1 3 ~ ~ ~ 0.1 0.1 0.1 0 3
# 繰り返し
    execute unless entity @s[distance=..1] positioned ^ ^ ^0.5 run function asset:mob/0327.eclael/tick/app.general/9.1.lightning_fast_effect_trail