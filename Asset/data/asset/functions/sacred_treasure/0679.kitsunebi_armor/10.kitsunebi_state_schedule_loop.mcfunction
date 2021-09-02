#> asset:sacred_treasure/0679.kitsunebi_armor/10.kitsunebi_state_schedule_loop
#
#
#
# @within function asset:sacred_treasure/0679.kitsunebi_armor/6.attack
# @within function asset:sacred_treasure/0679.kitsunebi_armor/10.kitsunebi_state_schedule_loop

# 狐火状態のmob
    execute if entity @e[scores={IV.Kitsunebi=0..},limit=1] as @e[scores={IV.Kitsunebi=0..}] at @s run function asset:sacred_treasure/0679.kitsunebi_armor/11.kitsunebi_state

# ループ
    execute if entity @e[scores={IV.Kitsunebi=0..},limit=1] run schedule function asset:sacred_treasure/0679.kitsunebi_armor/10.kitsunebi_state_schedule_loop 1t replace