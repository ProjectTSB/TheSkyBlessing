#> asset:sacred_treasure/1024.brave_rod/trigger/combo/tick
#
#
#
# @within function
#   asset:sacred_treasure/1024.brave_rod/trigger/3.main
#   asset:sacred_treasure/1024.brave_rod/trigger/combo/tick
#   asset:sacred_treasure/1024.brave_rod/trigger/3.main
#   asset:sacred_treasure/1024.brave_rod/trigger/rejoin_process

# エンティティに実行させる
    execute as @a[scores={SG.Wait=0..}] at @s run function asset:sacred_treasure/1024.brave_rod/trigger/combo/main

# エンティティがいればループ
    execute if entity @p[scores={SG.Wait=0..}] run schedule function asset:sacred_treasure/1024.brave_rod/trigger/combo/tick 1t