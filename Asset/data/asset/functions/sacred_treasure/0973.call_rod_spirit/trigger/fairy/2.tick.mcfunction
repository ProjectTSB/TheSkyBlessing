#> asset:sacred_treasure/0973.call_rod_spirit/trigger/fairy/2.tick
#
# scheduleでループする、妖精を動かすコマンド。
#
# @within function
#   asset:sacred_treasure/0973.call_rod_spirit/trigger/fairy/2.tick
#   asset:sacred_treasure/0973.call_rod_spirit/trigger/3.main
#   asset:sacred_treasure/0973.call_rod_spirit/trigger/rejoin_process

# エンティティに実行させる
    execute as @e[type=armor_stand,tag=87.Main] at @s run function asset:sacred_treasure/0973.call_rod_spirit/trigger/fairy/3.main

# エンティティがいればループ
    execute if entity @e[type=armor_stand,tag=87.Main,limit=1] run schedule function asset:sacred_treasure/0973.call_rod_spirit/trigger/fairy/2.tick 1t