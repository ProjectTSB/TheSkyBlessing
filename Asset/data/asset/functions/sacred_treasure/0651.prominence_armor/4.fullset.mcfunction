#> asset:sacred_treasure/0651.prominence_armor/4.fullset
#
#
#
# @within function asset:sacred_treasure/0650.prominence_helm/3.main
# @within function asset:sacred_treasure/0651.prominence_armor/3.main
# @within function asset:sacred_treasure/0652.prominence_leggings/3.main
# @within function asset:sacred_treasure/0653.prominence_boots/3.main

# タグ
    tag @s add I3.Fullset

# 演出
    particle lava ~ ~1.2 ~ 0.75 0.4 0.75 0 80 normal @a
    playsound entity.blaze.shoot master @a 0.5 0 0

# スケジュールループスタート
    schedule function asset:sacred_treasure/0651.prominence_armor/6.schedule_loop 1t replace