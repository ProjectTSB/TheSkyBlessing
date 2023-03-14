#> asset:artifact/0738.voltage_striker/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# ループ再開
    execute if entity @e[type=marker,tag=KI.Bullet,limit=1] run schedule function asset:artifact/0738.voltage_striker/trigger/bullet/loop 1t replace