#> asset:sacred_treasure/0687.soaring_wing/10.schedule_loop
#
#
#
# @within function asset:sacred_treasure/0687.soaring_wing/6.fullset
# @within function asset:sacred_treasure/0687.soaring_wing/10.schedule_loop
# @within function asset:sacred_treasure/0687.soaring_wing/rejoin_process

# 一式装備したプレイヤーがいれば実行
    execute if entity @a[tag=J3.FullSet] as @a[tag=J3.FullSet] at @s run function asset:sacred_treasure/0687.soaring_wing/11.player_tick

# スケジュールループ
    execute if entity @a[tag=J3.FullSet] run schedule function asset:sacred_treasure/0687.soaring_wing/10.schedule_loop 1t replace
