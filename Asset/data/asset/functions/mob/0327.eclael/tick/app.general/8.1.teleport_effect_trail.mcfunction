#> asset:mob/0327.eclael/tick/app.general/8.1.teleport_effect_trail
#
# 汎用処理 テレポート時の演出
#
# @within asset:mob/0327.eclael/tick/**

# 演出
    particle electric_spark ~ ~1 ~ 0.3 0.3 0.3 0.2 5
# 繰り返し
    execute unless entity @s[distance=..2] positioned ^ ^ ^0.5 run function asset:mob/0327.eclael/tick/app.general/8.1.teleport_effect_trail