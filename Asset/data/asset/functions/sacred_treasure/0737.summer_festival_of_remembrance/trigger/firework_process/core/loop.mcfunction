#> asset:sacred_treasure/0737.summer_festival_of_remembrance/trigger/firework_process/core/loop
#
# ループ処理
#
# @within function
#   asset:sacred_treasure/0737.summer_festival_of_remembrance/trigger/3.main
#   asset:sacred_treasure/0737.summer_festival_of_remembrance/trigger/firework_process/core/main
#   asset:sacred_treasure/0737.summer_festival_of_remembrance/trigger/rejoin_process

# メイン処理
    execute as @e[type=marker,tag=KH.FireworkCore] at @s run function asset:sacred_treasure/0737.summer_festival_of_remembrance/trigger/firework_process/core/main