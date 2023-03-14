#> asset:artifact/0210.terra_blade/trigger/3.1.terra_shot_tick
#
# テラブレードショットにコマンドを実行するためのfunction。scheduleで自身を呼び出して再帰するよ！
#
# @within function
#   asset:artifact/0210.terra_blade/trigger/3.1.terra_shot_tick
#   asset:artifact/0210.terra_blade/trigger/event/summon_shot
#   asset:artifact/0210.terra_blade/trigger/rejoin_process

# テラショットにコマンド実行
    execute as @e[type=armor_stand,tag=5U.Shot] at @s run function asset:artifact/0210.terra_blade/trigger/3.3.terra_shot_main

# ビームが存在していれば、このfunctionをループさせるよ
    execute if entity @e[type=armor_stand,tag=5U.Shot,limit=1] run schedule function asset:artifact/0210.terra_blade/trigger/3.1.terra_shot_tick 1t