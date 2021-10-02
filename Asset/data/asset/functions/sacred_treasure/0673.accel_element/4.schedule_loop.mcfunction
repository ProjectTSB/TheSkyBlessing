#> asset:sacred_treasure/0673.accel_element/4.schedule_loop
#
#
#
# @within function
#   asset:sacred_treasure/0673.accel_element/3.main
#   asset:sacred_treasure/0673.accel_element/4.schedule_loop
#   asset:sacred_treasure/0673.accel_element/rejoin_process

# スケジュールループ
    execute if entity @a[tag=IP.InEffect,limit=1] run schedule function asset:sacred_treasure/0673.accel_element/4.schedule_loop 1t replace

# 効果中
    execute if entity @a[tag=IP.InEffect,limit=1] as @a[tag=IP.InEffect] at @s run function asset:sacred_treasure/0673.accel_element/5.in_effect