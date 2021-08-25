#> asset:sacred_treasure/0679.kitsunebi_armor/10.kitsunebi_state_schedule_loop
#
#
#
# @within function asset:sacred_treasure/0679.kitsunebi_armor/6.attack
# @within function asset:sacred_treasure/0679.kitsunebi_armor/10.kitsunebi_state_schedule_loop


# 狐火状態のmob
    execute if entity @e[scores={IV.Kitsunebi=1..}] as @e[scores={IV.Kitsunebi=1..}] unless score @s IV.Kitsunebi2 matches 1.. at @s run function asset:sacred_treasure/0679.kitsunebi_armor/11.kitsunebi_state

# 狐蒼火状態のmob(狐火状態第2段階)
    execute if entity @e[scores={IV.Kitsunebi2=1..}] as @e[scores={IV.Kitsunebi2=1..}] at @s run function asset:sacred_treasure/0679.kitsunebi_armor/13.kitsunebi_state2

# ループ
    execute if entity @e[scores={IV.Kitsunebi=1..},limit=1] as @e[scores={IV.Kitsunebi=1..},limit=1] run schedule function asset:sacred_treasure/0679.kitsunebi_armor/10.kitsunebi_state_schedule_loop 1t replace