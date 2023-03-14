#> asset:artifact/0952.lunatic_rod/trigger/effect/loop
#
# スケジュールループを実行
#
# @within function
#   asset:artifact/0952.lunatic_rod/trigger/5.buff
#   asset:artifact/0952.lunatic_rod/trigger/effect/main
#   asset:artifact/0952.lunatic_rod/trigger/rejoin_process

# ループ
    execute as @a[scores={QG.EffectTime=0..}] at @s run function asset:artifact/0952.lunatic_rod/trigger/effect/main