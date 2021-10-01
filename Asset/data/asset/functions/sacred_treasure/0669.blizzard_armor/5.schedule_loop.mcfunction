#> asset:sacred_treasure/0669.blizzard_armor/5.schedule_loop
#
#
#
# @within function
#   asset:sacred_treasure/0669.blizzard_armor/4.fullset
#   asset:sacred_treasure/0669.blizzard_armor/5.schedule_loop
#   asset:sacred_treasure/0669.blizzard_armor/rejoin_process

# 一式装備時に実行
    execute if entity @a[tag=IL.Fullset,limit=1] as @a[tag=IL.Fullset] at @s run function asset:sacred_treasure/0669.blizzard_armor/6.tick

# スケジュールループ
    execute if entity @a[tag=IL.Fullset,limit=1] run schedule function asset:sacred_treasure/0669.blizzard_armor/5.schedule_loop 1t replace