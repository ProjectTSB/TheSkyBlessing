#> asset:artifact/0711.deep_sea_coral_crown/trigger/fullset/equip
#
# フルセット時に行う処理
#
# @within function
#   asset:artifact/0711.deep_sea_coral_crown/trigger/3.main
#   asset:artifact/0712.deep_sea_coral_raiment/trigger/3.main
#   asset:artifact/0713.deep_sea_coral_leggings/trigger/3.main
#   asset:artifact/0714.deep_sea_coral_boots/trigger/3.main

# 演出 濃くするために重ねる
    summon minecraft:area_effect_cloud ~ ~0.3 ~ {Age:0,Duration:8,WaitTime:0,Radius:3f,Tags:["Object","Uninterferable"],Particle:"dust 1 1 1000000000 1"}
    summon minecraft:area_effect_cloud ~ ~0.3 ~ {Age:0,Duration:8,WaitTime:0,Radius:3f,Tags:["Object","Uninterferable"],Particle:"dust 1 1 1000000000 1"}
    summon minecraft:area_effect_cloud ~ ~0.3 ~ {Age:0,Duration:8,WaitTime:0,Radius:3f,Tags:["Object","Uninterferable"],Particle:"dust 1 1 1000000000 1"}

    playsound ogg:block.amethyst_cluster.break2 player @a ~ ~ ~ 0.5 2
    playsound ogg:block.amethyst_cluster.break2 player @a ~ ~ ~ 0.5 1.75
    playsound ogg:block.amethyst_cluster.break2 player @a ~ ~ ~ 0.5 1.25
    playsound ogg:block.amethyst_cluster.break2 player @a ~ ~ ~ 0.5 1
    playsound block.end_portal.spawn player @a ~ ~ ~ 0.2 1.5
    playsound ogg:ambient.nether.crimson_forest.shine3 player @a ~ ~ ~ 0.35 2

# 珊瑚の演出
    execute rotated ~ 0 positioned ^-1.5 ^0.4 ^1.5 rotated ~45 -60 run function asset:artifact/0711.deep_sea_coral_crown/trigger/fullset/vfx/1
    execute rotated ~ 0 positioned ^-1.5 ^0.4 ^-1.5 rotated ~135 -60 run function asset:artifact/0711.deep_sea_coral_crown/trigger/fullset/vfx/2
    execute rotated ~ 0 positioned ^1.5 ^0.4 ^-1.5 rotated ~225 -60 run function asset:artifact/0711.deep_sea_coral_crown/trigger/fullset/vfx/3
    execute rotated ~ 0 positioned ^1.5 ^0.4 ^1.5 rotated ~315 -60 run function asset:artifact/0711.deep_sea_coral_crown/trigger/fullset/vfx/4

# フルセットを検知する用Tag
    tag @s add JR.Fullset

# 水攻撃+5%
    data modify storage api: Argument.UUID set value [I;1,1,711,0]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/water/add

# スケジュールループ開始
    schedule function asset:artifact/0711.deep_sea_coral_crown/trigger/fullset/loop 1t replace