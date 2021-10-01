#> asset:sacred_treasure/0665.purity_armor/6.schedule_loop
#
#
#
# @within function
#   asset:sacred_treasure/0665.purity_armor/4.fullset
#   asset:sacred_treasure/0665.purity_armor/6.schedule_loop
#   asset:sacred_treasure/0665.purity_armor/rejoin_process

# プレイヤー
    execute if entity @a[tag=IH.Fullset,limit=1] as @a[tag=IH.Fullset] at @s run function asset:sacred_treasure/0665.purity_armor/7.player_tick

# スケジュールループ
    execute if entity @a[tag=IH.Fullset,limit=1] run schedule function asset:sacred_treasure/0665.purity_armor/6.schedule_loop 1t replace