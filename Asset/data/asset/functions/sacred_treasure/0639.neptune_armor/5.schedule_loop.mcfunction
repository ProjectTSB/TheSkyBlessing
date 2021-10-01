#> asset:sacred_treasure/0639.neptune_armor/5.schedule_loop
#
#
#
# @within function
#   asset:sacred_treasure/0639.neptune_armor/4.fullset
#   asset:sacred_treasure/0639.neptune_armor/5.schedule_loop
#   asset:sacred_treasure/0639.neptune_armor/rejoin_process

# フルセットでかつ雨/雷雨、水に触れているならtick発動
    execute as @a[tag=HS.Fullset] at @s unless predicate lib:weather/is_sunny unless block ~ ~ ~ water run function asset:sacred_treasure/0639.neptune_armor/6.player_tick
    execute as @a[tag=HS.Fullset] at @s if block ~ ~ ~ water run function asset:sacred_treasure/0639.neptune_armor/6.player_tick

# スケジュールループ
    execute if entity @a[tag=HS.Fullset] run schedule function asset:sacred_treasure/0639.neptune_armor/5.schedule_loop 1t replace