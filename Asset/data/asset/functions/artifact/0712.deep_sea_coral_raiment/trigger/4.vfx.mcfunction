#> asset:artifact/0712.deep_sea_coral_raiment/trigger/4.vfx
#
#
#
# @within function asset:artifact/0712.deep_sea_coral_raiment/trigger/3.main

# 演出
    particle dust 0.494 0.545 1 0.75 ~ ~1.1 ~ 0.4 0.2 0.4 0 70 normal
    execute positioned ~ ~1.4 ~ rotated ~ 0 run function asset:artifact/0711.deep_sea_coral_crown/trigger/vfx
    execute positioned ~ ~1.15 ~ rotated ~ 0 run function asset:artifact/0711.deep_sea_coral_crown/trigger/vfx
    execute positioned ~ ~0.9 ~ rotated ~ 0 run function asset:artifact/0711.deep_sea_coral_crown/trigger/vfx
    playsound ogg:block.amethyst_cluster.break2 player @a ~ ~ ~ 1 2
