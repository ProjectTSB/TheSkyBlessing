#> asset:sacred_treasure/0716.solar_armor/6.schedule_loop
#
#
#
# @within function asset:sacred_treasure/0716.solar_armor/4.fullset
# @within function asset:sacred_treasure/0716.solar_armor/6.schedule_loop

# プレイヤー
    execute if entity @a[tag=JW.Fullset,limit=1] as @a[tag=JW.Fullset] at @s run function asset:sacred_treasure/0716.solar_armor/7.player_tick

# スケジュールループ
    execute if entity @a[tag=JW.Fullset,limit=1] run schedule function asset:sacred_treasure/0716.solar_armor/6.schedule_loop 1t replace