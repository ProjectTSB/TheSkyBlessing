#> asset:sacred_treasure/0679.kitsunebi_armor/7.schedule_loop
#
#
#
# @within function asset:sacred_treasure/0679.kitsunebi_armor/4.fullset
# @within function asset:sacred_treasure/0679.kitsunebi_armor/7.schedule_loop
# @within function asset:sacred_treasure/0679.kitsunebi_armor/rejoin_process

# プレイヤーへの疑似tick
    execute if entity @a[tag=IV.FullSet] as @a[tag=IV.FullSet] at @s run function asset:sacred_treasure/0679.kitsunebi_armor/8.player_tick


# 狐火状態のmob
    execute if entity @e[scores={IV.Kitsunebi=1..}] as @e[scores={IV.Kitsunebi=1..}] unless score @s IV.Kitsunebi2 matches 1.. at @s run function asset:sacred_treasure/0679.kitsunebi_armor/10.kitsunebi_state

# 狐蒼火状態のmob(狐火状態第2段階)
    execute if entity @e[scores={IV.Kitsunebi2=1..}] as @e[scores={IV.Kitsunebi2=1..}] at @s run function asset:sacred_treasure/0679.kitsunebi_armor/12.kitsunebi_state2

# ループ
    execute if entity @a[tag=IV.FullSet] run schedule function asset:sacred_treasure/0679.kitsunebi_armor/7.schedule_loop 1t replace