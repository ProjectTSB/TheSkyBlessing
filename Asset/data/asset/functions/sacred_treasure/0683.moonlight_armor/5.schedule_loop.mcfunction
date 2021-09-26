#> asset:sacred_treasure/0683.moonlight_armor/5.schedule_loop
#
#
#
# @within function asset:sacred_treasure/0683.moonlight_armor/4.fullset
# @within function asset:sacred_treasure/0683.moonlight_armor/5.schedule_loop
# @within function asset:sacred_treasure/0683.moonlight_armor/rejoin_process

# オーバーワールドでかつ晴れかつ夜ならtagと補正値
    execute if predicate lib:dimension/is_overworld if predicate lib:weather/is_sunny unless predicate lib:is_day as @a[tag=IZ.Fullset,tag=!IZ.UnderTheMoon] at @s run function asset:sacred_treasure/0683.moonlight_armor/6.under_the_moon

# プレイヤー
    execute if entity @a[tag=IZ.UnderTheMoon,limit=1] as @a[tag=IZ.UnderTheMoon] at @s run function asset:sacred_treasure/0683.moonlight_armor/8.player_tick

# スケジュールループ
    execute if entity @a[tag=IZ.Fullset,limit=1] run schedule function asset:sacred_treasure/0683.moonlight_armor/5.schedule_loop 1t replace