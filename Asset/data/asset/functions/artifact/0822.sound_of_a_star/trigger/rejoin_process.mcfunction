#> asset:artifact/0822.sound_of_a_star/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# スケジュールループ再開
    execute if entity @e[type=marker,tag=MU.Star,limit=1] run schedule function asset:artifact/0822.sound_of_a_star/trigger/star/01.schedule 1t replace