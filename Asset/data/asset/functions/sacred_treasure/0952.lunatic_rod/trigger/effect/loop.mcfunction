#> asset:sacred_treasure/0952.lunatic_rod/trigger/effect/loop
#
# スケジュールループを実行
#
# @within function
#   asset:sacred_treasure/0952.lunatic_rod/trigger/3.main
#   asset:sacred_treasure/0952.lunatic_rod/trigger/effect/main
#   asset:sacred_treasure/0952.lunatic_rod/trigger/rejoin_process

# ループ
    execute as @a[scores={QG.EffectTime=0..}] at @s run function asset:sacred_treasure/0952.lunatic_rod/trigger/effect/main