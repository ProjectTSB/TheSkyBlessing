#> asset:artifact/0952.lunatic_rod/trigger/effect/main
#
# 演出や効果時間の処理など
#
# @within function asset:artifact/0952.lunatic_rod/trigger/effect/loop

# 演出
    particle end_rod ~ ~1.2 ~ 0.5 0.5 0.5 0.1 1 normal @a

# クールダウン処理
    scoreboard players remove @s QG.EffectTime 1

# リセット
    execute if entity @s[scores={QG.EffectTime=..0}] run function asset:artifact/0952.lunatic_rod/trigger/effect/reset

# ループ処理
    execute if entity @s[scores={QG.EffectTime=0..}] run schedule function asset:artifact/0952.lunatic_rod/trigger/effect/loop 1t replace