#> asset:sacred_treasure/0976.blue_heaven/trigger/combo/1.tick
#
# コンボ待機
#
# @within
#   function asset:sacred_treasure/0976.blue_heaven/trigger/3.main
#   function asset:sacred_treasure/0976.blue_heaven/trigger/combo/1.tick

# エンティティに実行させる
    execute as @a[tag=R4.Combo1] at @s run function asset:sacred_treasure/0976.blue_heaven/trigger/combo/2.main

# エンティティがいればループ
    execute if entity @p[tag=R4.Combo1] run schedule function asset:sacred_treasure/0976.blue_heaven/trigger/combo/1.tick 1t