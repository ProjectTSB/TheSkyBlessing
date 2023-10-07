#> asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect
#
# 汎用処理 電光石火時の演出
#
# @within asset:mob/0327.eclael/tick/**

# 演出
    playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
    playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
    # particle flash ~ ~1 ~ 0 0 0 0 1
    execute at @s run particle flash ~ ~1 ~ 0 0 0 0 1
# 軌跡表示
    execute facing entity @s feet run function asset:mob/0327.eclael/tick/app.general/9.1.lightning_fast_effect_trail
