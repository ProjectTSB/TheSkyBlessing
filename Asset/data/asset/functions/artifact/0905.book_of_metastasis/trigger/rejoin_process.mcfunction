#> asset:artifact/0905.book_of_metastasis/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# Scheduleループ
    execute if entity @e[type=area_effect_cloud,tag=P5.Bullet,limit=1] run schedule function asset:artifact/0905.book_of_metastasis/trigger/4.schedule 1t replace