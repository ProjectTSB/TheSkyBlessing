#> asset:sacred_treasure/0639.neptune_armor/4.schedule_loop
#
#
#
# @within function asset:sacred_treasure/0639.neptune_armor/3.1.complete_set
# @within function asset:sacred_treasure/0639.neptune_armor/4.schedule_loop
# @within function asset:sacred_treasure/0639.neptune_armor/rejoin_process

# フルセットでかつ雨/雷雨、水に触れているならtick発動
    execute as @a[tag=HS.Complete] at @s unless predicate asset:sacred_treasure/0639.neptune_armor/weather_check unless block ~ ~ ~ water run function asset:sacred_treasure/0639.neptune_armor/5.player_tick
    execute as @a[tag=HS.Complete] at @s if block ~ ~ ~ water run function asset:sacred_treasure/0639.neptune_armor/5.player_tick

# スケジュールループ
    execute if entity @a[tag=HS.Complete] run schedule function asset:sacred_treasure/0639.neptune_armor/4.schedule_loop 1t