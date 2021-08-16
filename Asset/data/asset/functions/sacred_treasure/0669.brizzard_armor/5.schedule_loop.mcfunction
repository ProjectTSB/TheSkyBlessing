#> asset:sacred_treasure/0669.brizzard_armor/5.schedule_loop
#
#
#
# @within function asset:sacred_treasure/0669.brizzard_armor/4.fullset
# @within function asset:sacred_treasure/0669.brizzard_armor/5.schedule_loop
# @within function asset:sacred_treasure/0669.brizzard_armor/rejoin_process

# 一式装備時に実行
    execute if entity @a[tag=IL.FullSet] as @a[tag=IL.FullSet] at @s run function asset:sacred_treasure/0669.brizzard_armor/6.tick

# スケジュールループ
    execute if entity @a[tag=IL.FullSet] run schedule function asset:sacred_treasure/0669.brizzard_armor/5.schedule_loop 1t