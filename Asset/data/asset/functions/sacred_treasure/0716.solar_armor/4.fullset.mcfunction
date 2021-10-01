#> asset:sacred_treasure/0716.solar_armor/4.fullset
#
#
#
# @within function asset:sacred_treasure/071?.solar_*/3.main

# Tag付与
    tag @s add JW.Fullset

# 演出
    particle end_rod ~ ~8 ~ 0 7 0 0 150 normal @a
    particle dust 1000000000 1000000000 3 1.2 ~ ~1.2 ~ 0.5 0.4 0.5 0 50 normal @a
    particle dust 0 5000 100000000000 1.2 ~ ~1.2 ~ 0.5 0.4 0.5 0 50 normal @a
    particle end_rod ~ ~2 ~ 0.8 0.8 0.8 0 80 normal @a
    playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1 1.5 0

# スケジュールループスタート
    schedule function asset:sacred_treasure/0716.solar_armor/6.schedule_loop 1t replace