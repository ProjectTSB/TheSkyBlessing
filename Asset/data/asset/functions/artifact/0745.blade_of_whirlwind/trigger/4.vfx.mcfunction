#> asset:artifact/0745.blade_of_whirlwind/trigger/4.vfx
#
#
#
# @within function asset:artifact/0745.blade_of_whirlwind/trigger/3.main

# 演出
    particle cloud ~ ~1.2 ~ 0.6 0.4 0.6 0.3 50 normal @a
    particle dust 0.337 0.557 0.906 1.5 ~ ~1.2 ~ 0.7 0.4 0.7 0 50 normal @a
    particle sweep_attack ~ ~1.2 ~ 0.5 0.4 0.5 0 30 normal @a
    playsound entity.wither.shoot player @a ~ ~ ~ 0.5 1.6 0
    playsound item.trident.riptide_3 player @a ~ ~ ~ 0.7 1 0