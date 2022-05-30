#> asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.1.fairy_tick
#
# scheduleでループする、妖精を動かすコマンド。
#
# @within function asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.1.fairy_tick
# @within function asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.main

# エンティティに実行させる
    execute as @e[type=bee,tag=295Fa.Main] at @s run function asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.3.fairy_main

# エンティティがいればループ
    execute if entity @e[type=bee,tag=295Fa.Main,limit=1] run schedule function asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.1.fairy_tick 1t