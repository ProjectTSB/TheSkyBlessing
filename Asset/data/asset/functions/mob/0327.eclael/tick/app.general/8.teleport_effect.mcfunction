#> asset:mob/0327.eclael/tick/app.general/8.teleport_effect
#
# 汎用処理 テレポート時の演出
#
# @within asset:mob/0327.eclael/tick/**

# 演出
    playsound item.trident.return hostile @a ~ ~ ~ 1 1.2
    particle flash ~ ~1 ~ 0 0 0 0 1
    particle firework ~ ~1 ~ 0 0 0 0.3 5
    execute at @s run particle flash ~ ~1 ~ 0 0 0 0 1