#> asset:artifact/0713.deep_sea_coral_leggings/trigger/4.vfx
#
#
#
# @within function asset:artifact/0713.deep_sea_coral_leggings/trigger/3.main

# 演出
    particle dust 0.686 0.49 1 0.75 ~ ~0.4 ~ 0.4 0.15 0.4 0 60 normal
    execute positioned ~ ~0.6 ~ rotated ~ 0 run function asset:artifact/0711.deep_sea_coral_crown/trigger/vfx
    execute positioned ~ ~0.3 ~ rotated ~ 0 run function asset:artifact/0711.deep_sea_coral_crown/trigger/vfx
    playsound ogg:block.amethyst_cluster.break2 player @a ~ ~ ~ 1 2
