#> asset:sacred_treasure/0295.call_elemental_familiar/trigger/fairy/2.tick
#
# scheduleでループする、妖精を動かすコマンド。
#
# @within function
#   asset:sacred_treasure/0295.call_elemental_familiar/trigger/fairy/2.tick
#   asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.main
#   asset:sacred_treasure/0295.call_elemental_familiar/trigger/rejoin_process

# エンティティに実行させる
    execute as @e[type=armor_stand,tag=87.Familiar] at @s run function asset:sacred_treasure/0295.call_elemental_familiar/trigger/fairy/3.main

# エンティティがいればループ
    execute if entity @e[type=armor_stand,tag=87.Familiar,limit=1] run schedule function asset:sacred_treasure/0295.call_elemental_familiar/trigger/fairy/2.tick 1t