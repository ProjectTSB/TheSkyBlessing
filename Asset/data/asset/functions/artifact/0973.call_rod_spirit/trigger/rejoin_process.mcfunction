#> asset:artifact/0973.call_rod_spirit/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# このfunctionをループさせる
    execute if entity @e[type=armor_stand,tag=R1.Spirit,limit=1] run schedule function asset:artifact/0973.call_rod_spirit/trigger/fairy/2.tick 1t
    execute if entity @e[type=armor_stand,tag=R1.Shot,limit=1] run schedule function asset:artifact/0973.call_rod_spirit/trigger/shot/2.tick 1t