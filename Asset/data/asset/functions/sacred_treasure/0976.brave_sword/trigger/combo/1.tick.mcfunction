#> asset:sacred_treasure/0976.brave_sword/trigger/combo/1.tick
#
# コンボ待機
#
# @within function
#   asset:sacred_treasure/0976.brave_sword/trigger/3.main
#   asset:sacred_treasure/0976.brave_sword/trigger/combo/1.tick
#   asset:sacred_treasure/0976.brave_sword/trigger/rejoin_process

# エンティティに実行させる
    execute as @a[scores={R4.Wait=0..}] at @s run function asset:sacred_treasure/0976.brave_sword/trigger/combo/2.main

# エンティティがいればループ
    execute if entity @p[scores={R4.Wait=0..}] run schedule function asset:sacred_treasure/0976.brave_sword/trigger/combo/1.tick 1t