#> asset:sacred_treasure/0295.call_elemental_familiar/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# このfunctionをループさせる
    execute if entity @e[type=armor_stand,tag=87.Main,limit=1] run schedule function asset:sacred_treasure/0295.call_elemental_familiar/trigger/fairy/tick 1t