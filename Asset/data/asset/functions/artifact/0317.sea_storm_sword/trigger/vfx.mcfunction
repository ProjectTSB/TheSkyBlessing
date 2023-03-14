#> asset:artifact/0317.sea_storm_sword/trigger/vfx
#
# 演出の処理を実行
#
# @within function asset:artifact/0317.sea_storm_sword/trigger/3.main

# 演出
    particle dolphin ~ ~1 ~ 0.4 0.5 0.4 0 200 normal @a
    particle cloud ~ ~1 ~ 0.5 0.5 0.5 0.1 20
    particle block water ~ ~ ~ 0.4 1.4 0.4 0 100
    playsound entity.dolphin.jump player @a ~ ~ ~ 1 2
    playsound entity.dolphin.splash player @a ~ ~ ~ 1.2 1
    playsound block.glass.break player @a ~ ~ ~ 1.2 1

