#> asset:sacred_treasure/1022.brave_wand/trigger/combo/tick
#
#
#
# @within function
#   asset:sacred_treasure/1022.brave_wand/trigger/3.main
#   asset:sacred_treasure/1022.brave_wand/trigger/combo/tick

# エンティティに実行させる
    execute as @a[scores={SE.Wait=0..}] at @s run function asset:sacred_treasure/1022.brave_wand/trigger/combo/main

# エンティティがいればループ
    execute if entity @p[scores={SE.Wait=0..}] run schedule function asset:sacred_treasure/1022.brave_wand/trigger/combo/tick 1t