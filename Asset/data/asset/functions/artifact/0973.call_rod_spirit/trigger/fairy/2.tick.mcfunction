#> asset:artifact/0973.call_rod_spirit/trigger/fairy/2.tick
#
# scheduleでループする、妖精を動かすコマンド。
#
# @within function
#   asset:artifact/0973.call_rod_spirit/trigger/fairy/2.tick
#   asset:artifact/0973.call_rod_spirit/trigger/3.main
#   asset:artifact/0973.call_rod_spirit/trigger/rejoin_process

# エンティティに実行させる
    execute as @e[type=armor_stand,tag=R1.Spirit] at @s run function asset:artifact/0973.call_rod_spirit/trigger/fairy/3.main

# エンティティがいればループ
    execute if entity @e[type=armor_stand,tag=R1.Spirit,limit=1] run schedule function asset:artifact/0973.call_rod_spirit/trigger/fairy/2.tick 1t