#> asset:sacred_treasure/0679.kitsunebi_armor/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin
    execute if entity @a[tag=IV.Fullset] run schedule function asset:sacred_treasure/0679.kitsunebi_armor/7.schedule_loop 1t replace
    execute if entity @e[type=#lib:living,tag=IV.Kitunebi,limit=1] run schedule function asset:sacred_treasure/0679.kitsunebi_armor/10.kitsunebi_state_schedule_loop 1t replace