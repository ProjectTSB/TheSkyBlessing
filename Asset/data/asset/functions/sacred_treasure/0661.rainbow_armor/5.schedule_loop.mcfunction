#> asset:sacred_treasure/0661.rainbow_armor/5.schedule_loop
#
#
# @within function
#   asset:sacred_treasure/0661.rainbow_armor/4.fullset
#   asset:sacred_treasure/0661.rainbow_armor/5.schedule_loop
#   asset:sacred_treasure/0661.rainbow_armor/rejoin_process

# 演出
    execute if entity @a[tag=ID.FullSet,limit=1] as @a[tag=ID.FullSet] at @s run function asset:sacred_treasure/0661.rainbow_armor/6.tick

# スケジュールループ
    execute if entity @a[tag=ID.FullSet] run schedule function asset:sacred_treasure/0661.rainbow_armor/5.schedule_loop 1t replace


