#> asset:artifact/0907.rod_of_rain/trigger/rain_cloud/01.schedule_loop
#
# スケジュールループだよ
#
# @within function
#   asset:artifact/0907.rod_of_rain/trigger/3.main
#   asset:artifact/0907.rod_of_rain/trigger/rejoin_process
#   asset:artifact/0907.rod_of_rain/trigger/rain_cloud/02.main

# メイン処理
    execute as @e[type=marker,tag=P8.RainCloud] at @s run function asset:artifact/0907.rod_of_rain/trigger/rain_cloud/02.main