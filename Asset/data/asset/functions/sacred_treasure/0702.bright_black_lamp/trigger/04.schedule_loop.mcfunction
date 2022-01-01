#> asset:sacred_treasure/0702.bright_black_lamp/trigger/04.schedule_loop
#
#
#
# @within function
#   asset:sacred_treasure/0702.bright_black_lamp/trigger/3.main
#   asset:sacred_treasure/0702.bright_black_lamp/trigger/04.schedule_loop
#   asset:sacred_treasure/0702.bright_black_lamp/trigger/rejoin_process

# 実行
    execute if entity @a[tag=JI.Lamp] as @a[tag=JI.Lamp] at @s run function asset:sacred_treasure/0702.bright_black_lamp/trigger/05.schedule_tick

# スケジュールループ
    execute if entity @a[tag=JI.Lamp] run schedule function asset:sacred_treasure/0702.bright_black_lamp/trigger/04.schedule_loop 1t replace