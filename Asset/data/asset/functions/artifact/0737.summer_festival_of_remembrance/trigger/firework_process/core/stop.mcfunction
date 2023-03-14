#> asset:artifact/0737.summer_festival_of_remembrance/trigger/firework_process/core/stop
#
# 停止処理
#
# @within function asset:artifact/0737.summer_festival_of_remembrance/trigger/firework_process/core/main

# スニーク時間計測
    scoreboard players add @s KH.SneakTime 1

# 2.5秒で消える
    execute if entity @s[scores={KH.SneakTime=50..}] run kill @s