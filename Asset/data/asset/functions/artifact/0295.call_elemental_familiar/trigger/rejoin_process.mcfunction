#> asset:artifact/0295.call_elemental_familiar/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# このfunctionをループさせる
    execute if entity @e[type=armor_stand,tag=87.Familiar,limit=1] run schedule function asset:artifact/0295.call_elemental_familiar/trigger/fairy/2.tick 1t
    execute if entity @e[type=armor_stand,tag=87.Shot,limit=1] run schedule function asset:artifact/0295.call_elemental_familiar/trigger/shot/2.tick 1t