#> asset:artifact/0952.lunatic_rod/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# ループ再開処理
    execute if entity @s[scores={QG.EffectTime=0..}] run schedule function asset:artifact/0952.lunatic_rod/trigger/effect/loop 1t replace