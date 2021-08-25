#> asset:sacred_treasure/0679.kitsunebi_armor/7.schedule_loop
#
#
#
# @within function asset:sacred_treasure/0679.kitsunebi_armor/4.fullset
# @within function asset:sacred_treasure/0679.kitsunebi_armor/7.schedule_loop
# @within function asset:sacred_treasure/0679.kitsunebi_armor/rejoin_process

# プレイヤーへの疑似tick
    execute if entity @a[tag=IV.FullSet] as @a[tag=IV.FullSet] at @s run function asset:sacred_treasure/0679.kitsunebi_armor/8.player_tick
    
# ループ
    execute if entity @a[tag=IV.FullSet] run schedule function asset:sacred_treasure/0679.kitsunebi_armor/7.schedule_loop 1t replace