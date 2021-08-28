#> asset:sacred_treasure/0702.bright_black_lamp/4.schedule_loop
#
#
#
# @within function asset:sacred_treasure/0702.bright_black_lamp/3.main
# @within function asset:sacred_treasure/0702.bright_black_lamp/4.schedule_loop
# @within function asset:sacred_treasure/0702.bright_black_lamp/rejoin_process

# 実行
    execute if entity @a[scores={JI.Tick=0..}] as @a[scores={JI.Tick=0..}] at @s run function asset:sacred_treasure/0702.bright_black_lamp/5.schedule_tick

# スケジュールループ
    execute if entity @a[scores={JI.Tick=0..}] run schedule function asset:sacred_treasure/0702.bright_black_lamp/4.schedule_loop 1t replace