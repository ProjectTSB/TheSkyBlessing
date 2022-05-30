#> asset:sacred_treasure/0295.call_elemental_familiar/trigger/fairy/tick
#
# scheduleでループする、妖精を動かすコマンド。
#
# @within function asset:sacred_treasure/0295.call_elemental_familiar/trigger/fairy/tick
# @within function asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.main

# エンティティに実行させる
    execute as @e[type=armor_stand,tag=87.Main] at @s run function asset:sacred_treasure/0295.call_elemental_familiar/trigger/fairy/main

# エンティティがいればループ
    execute if entity @e[type=armor_stand,tag=87.Main,limit=1] run schedule function asset:sacred_treasure/0295.call_elemental_familiar/trigger/fairy/tick 1t