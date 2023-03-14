#> asset:artifact/0719.sword_of_divine_sound/trigger/vfx/circle
#
# 円状に広がるvfx
#
# @within function
#   asset:artifact/0719.sword_of_divine_sound/trigger/vfx/
#   asset:artifact/0719.sword_of_divine_sound/trigger/vfx/circle

# 拡散するparticle
    execute rotated ~00 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~03 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~06 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~09 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~12 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~15 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~18 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~21 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~24 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~27 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0

# これを~357までやるのがだるいので回転する再帰を使用
    scoreboard players add $RecursiveLimit Temporary 1
    execute if score $RecursiveLimit Temporary matches ..11 rotated ~30 ~ run function asset:artifact/0719.sword_of_divine_sound/trigger/vfx/circle