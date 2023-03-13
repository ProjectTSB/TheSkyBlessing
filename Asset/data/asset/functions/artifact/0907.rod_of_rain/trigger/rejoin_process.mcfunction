#> asset:artifact/0907.rod_of_rain/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# スケジュールループ再開
    execute if entity @e[type=marker,tag=P8.RainCloud,limit=1] run schedule function asset:artifact/0907.rod_of_rain/trigger/rain_cloud/01.schedule_loop 1t replace