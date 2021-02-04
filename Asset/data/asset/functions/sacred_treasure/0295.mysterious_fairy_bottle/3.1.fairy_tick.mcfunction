#> asset:sacred_treasure/0295.mysterious_fairy_bottle/3.1.fairy_tick
#
# scheduleでループする、妖精を動かすコマンド。
#
# @within function asset:sacred_treasure/0295.mysterious_fairy_bottle/3.1.fairy_tick
# @within function asset:sacred_treasure/0295.mysterious_fairy_bottle/3.main

# エンティティに実行させる
    execute as @e[type=bee,tag=ChuzFairyInit] at @s run function asset:sacred_treasure/0295.mysterious_fairy_bottle/3.2.fairy_init
    execute as @e[type=bee,tag=ChuzFairy] at @s run function asset:sacred_treasure/0295.mysterious_fairy_bottle/3.3.fairy_main

# エンティティがいればループ
    execute if entity @e[type=bee,tag=ChuzFairy,limit=1] run schedule function asset:sacred_treasure/0295.mysterious_fairy_bottle/3.1.fairy_tick 1t