#> asset:sacred_treasure/0976.blue_heaven/trigger/combo/1.tick
#
# コンボ待機
#
# @within
#   function asset:sacred_treasure/0976.blue_heaven/trigger/3.main
#   function asset:sacred_treasure/0976.blue_heaven/trigger/combo/1.tick

# エンティティに実行させる
    execute as @a[scores={R4.Wait=0..}] at @s run function asset:sacred_treasure/0976.blue_heaven/trigger/combo/2.main

# エンティティがいればループ
    execute if entity @p[scores={R4.Wait=0..}] run schedule function asset:sacred_treasure/0976.blue_heaven/trigger/combo/1.tick 1t