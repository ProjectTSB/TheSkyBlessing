#> asset:sacred_treasure/0743.fierce_water_armor/4.fullset
#
#
#
# @within function asset:sacred_treasure/0742.fierce_water_helm/3.main
# @within function asset:sacred_treasure/0743.fierce_water_armor/3.main
# @within function asset:sacred_treasure/0744.fierce_water_leggings/3.main
# @within function asset:sacred_treasure/0745.fierce_water_boots/3.main

# Tag付与
    tag @s add KN.Fullset

# 演出
    particle rain ~ ~1.2 ~ 1.2 0.4 1.2 1 150 normal @a
    particle splash ~ ~1.2 ~ 1.2 0.4 1.2 1 150 normal @a
    playsound minecraft:entity.player.splash.high_speed master @a ~ ~ ~ 1 2 0
    playsound entity.player.splash master @a ~ ~ ~ 1 1 0

# スケジュールループ開始
    schedule function asset:sacred_treasure/0743.fierce_water_armor/6.schedule_loop 1t replace

# スコアを0に設定
    scoreboard players set @s KN.Sprinting 0