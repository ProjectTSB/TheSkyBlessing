#> asset:sacred_treasure/0647.thorn_armor/trigger/9.loop
#
# スケジュールループを実行
#
# @within function
#   asset:sacred_treasure/0647.thorn_armor/trigger/4.fullset
#   asset:sacred_treasure/0647.thorn_armor/trigger/10.loop_process
#   asset:sacred_treasure/0647.thorn_armor/trigger/rejoin_process

# 対象がいるなら実行
    execute as @a[tag=HZ.FullSet] at @s run function asset:sacred_treasure/0647.thorn_armor/trigger/10.loop_process