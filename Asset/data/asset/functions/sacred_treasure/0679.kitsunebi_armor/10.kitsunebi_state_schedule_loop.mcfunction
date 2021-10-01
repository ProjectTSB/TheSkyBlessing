#> asset:sacred_treasure/0679.kitsunebi_armor/10.kitsunebi_state_schedule_loop
#
#
#
# @within function
#   asset:sacred_treasure/0679.kitsunebi_armor/6.melee
#   asset:sacred_treasure/0679.kitsunebi_armor/10.kitsunebi_state_schedule_loop
#   asset:sacred_treasure/0679.kitsunebi_armor/rejoin_process

# 狐火状態のmob
    execute if entity @e[type=#lib:living,tag=IV.Kitunebi,limit=1] as @e[type=#lib:living,tag=IV.Kitunebi] at @s run function asset:sacred_treasure/0679.kitsunebi_armor/11.kitsunebi_state

# ループ
    execute if entity @e[type=#lib:living,tag=IV.Kitunebi,limit=1] run schedule function asset:sacred_treasure/0679.kitsunebi_armor/10.kitsunebi_state_schedule_loop 1t replace