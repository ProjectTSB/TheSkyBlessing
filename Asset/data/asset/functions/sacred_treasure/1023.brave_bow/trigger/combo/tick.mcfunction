#> asset:sacred_treasure/1023.brave_bow/trigger/combo/tick
#
# スケジュールループ
#
# @within function
#   asset:sacred_treasure/1023.brave_bow/trigger/3.main
#   asset:sacred_treasure/1023.brave_bow/trigger/combo/tick
#   asset:sacred_treasure/1023.brave_bow/trigger/rejoin_process

# エンティティに実行させる
    execute as @a[scores={SF.Wait=0..}] at @s run function asset:sacred_treasure/1023.brave_bow/trigger/combo/main

# エンティティがいればループ
    execute if entity @p[scores={SF.Wait=0..}] run schedule function asset:sacred_treasure/1023.brave_bow/trigger/combo/tick 1t