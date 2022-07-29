#> asset:sacred_treasure/0711.deep_sea_coral_crown/trigger/fullset/equip
#
# フルセット時に行う処理
#
# @within function
#   asset:sacred_treasure/0711.deep_sea_coral_crown/trigger/3.main
#   asset:sacred_treasure/0712.deep_sea_coral_raiment/trigger/3.main
#   asset:sacred_treasure/0713.deep_sea_coral_leggings/trigger/3.main
#   asset:sacred_treasure/0714.deep_sea_coral_boots/trigger/3.main

# 演出
    summon minecraft:area_effect_cloud ~ ~0.3 ~ {Age:0,Duration:8,WaitTime:0,Radius:3f,Tags:[],Particle:"dust 0.439 0.737 1 0.6"}
    summon minecraft:area_effect_cloud ~ ~0.3 ~ {Age:0,Duration:8,WaitTime:0,Radius:3f,Tags:[],Particle:"dust 0.494 0.545 1 0.6"}
    summon minecraft:area_effect_cloud ~ ~0.3 ~ {Age:0,Duration:8,WaitTime:0,Radius:3f,Tags:[],Particle:"dust 0.686 0.49 1 0.6"}
    summon minecraft:area_effect_cloud ~ ~0.3 ~ {Age:0,Duration:8,WaitTime:0,Radius:3f,Tags:[],Particle:"dust 1 0.549 1 0.6"}

# フルセットを検知する用Tag
    tag @s add JR.Fullset

# 水攻撃+5%
    data modify storage api: Argument.UUID set value [I;1,1,711,0]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/water/add

# スケジュールループ開始
    schedule function asset:sacred_treasure/0711.deep_sea_coral_crown/trigger/fullset/loop 1t replace