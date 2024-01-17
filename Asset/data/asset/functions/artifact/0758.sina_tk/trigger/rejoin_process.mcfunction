#> asset:artifact/0758.sina_tk/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# スケジュールループ再開
    execute if entity @e[type=marker,tag=L2.Bullet,limit=1] run schedule function asset:artifact/0758.sina_tk/trigger/bullet/loop 1t replace