#> asset:sacred_treasure/0639.neptune_armor/4.tick_trigger
#
#
#
# @within tag/function asset:sacred_treasure/tick

# フルセットでかつ雨/雷雨、水に触れているならtick発動
    execute if entity @s[tag=HS.Complete] unless predicate asset:sacred_treasure/0639.neptune_armor/weather_check unless block ~ ~ ~ water run function asset:sacred_treasure/0639.neptune_armor/4.1.tick
    execute if entity @s[tag=HS.Complete] if block ~ ~ ~ water run function asset:sacred_treasure/0639.neptune_armor/4.1.tick