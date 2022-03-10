#> asset:sacred_treasure/0907.rod_of_rain/trigger/rain_cloud/01.schedule_loop
#
# スケジュールループだよ
#
# @within function
#   asset:sacred_treasure/0907.rod_of_rain/trigger/3.main
#   asset:sacred_treasure/0907.rod_of_rain/trigger/rain_cloud/01.schedule_loop
#   asset:sacred_treasure/0907.rod_of_rain/trigger/rejoin_process

# メイン処理
    execute as @e[type=marker,tag=P8.RainClowd] at @s run function asset:sacred_treasure/0907.rod_of_rain/trigger/rain_cloud/02.main

# スケジュールループ
    schedule function asset:sacred_treasure/0907.rod_of_rain/trigger/rain_cloud/01.schedule_loop 1t replace