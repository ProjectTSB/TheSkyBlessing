#> asset:sacred_treasure/0743.fierce_water_armor/6.schedule_loop
#
#
#
# @within function
#   asset:sacred_treasure/0743.fierce_water_armor/4.fullset
#   asset:sacred_treasure/0743.fierce_water_armor/6.schedule_loop
#   asset:sacred_treasure/0743.fierce_water_armor/rejoin_process

# プレイヤー
    execute if entity @a[tag=KN.Fullset,limit=1] as @a[tag=KN.Fullset] at @s run function asset:sacred_treasure/0743.fierce_water_armor/7.player_tick

# スケジュールループ
    execute if entity @a[tag=KN.Fullset,limit=1] run schedule function asset:sacred_treasure/0743.fierce_water_armor/6.schedule_loop 1t replace