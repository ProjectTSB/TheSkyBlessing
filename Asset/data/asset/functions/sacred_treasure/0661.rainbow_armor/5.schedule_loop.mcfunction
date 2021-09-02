#> asset:sacred_treasure/0661.rainbow_armor/5.schedule_loop
#
# 指定したイベントタイミングで実行されるfunction
#
# @within function asset:sacred_treasure/0661.rainbow_armor/4.fullset
# @within function asset:sacred_treasure/0661.rainbow_armor/5.schedule_loop
# @within function asset:sacred_treasure/0661.rainbow_armor/rejoin_process

# 演出
    execute as @a[tag=ID.FullSet] at @s rotated ~ 0 positioned ^ ^ ^-0.3 run function asset:sacred_treasure/0661.rainbow_armor/6.tick

# スケジュールループ
    execute if entity @a[tag=ID.FullSet] run schedule function asset:sacred_treasure/0661.rainbow_armor/5.schedule_loop 1t replace


