#> asset:sacred_treasure/0737.summer_festival_of_remembrance/trigger/firework_process/core/stop
#
#
#
# @within function asset:sacred_treasure/0737.summer_festival_of_remembrance/trigger/firework_process/core/main

# スニーク時間計測
    scoreboard players add @s KH.SneakTime 1

# 2.5秒で消える
    execute if entity @s[scores={KH.SneakTime=50..}] run kill @s