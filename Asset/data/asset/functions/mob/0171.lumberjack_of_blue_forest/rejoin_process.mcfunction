#> asset:mob/0171.lumberjack_of_blue_forest/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# スケジュールループ再開
    execute if entity @s[tag=4R.HealthDown] run schedule function asset:mob/0171.lumberjack_of_blue_forest/attack/3.schedule_loop 1t replace