#> asset:sacred_treasure/0711.deep_sea_coral_crown/trigger/fullset/equip
#
# フルセット時に行う処理
#
# @within function
#   asset:sacred_treasure/0711.deep_sea_coral_crown/trigger/3.main
#   asset:sacred_treasure/0712.deep_sea_coral_raiment/trigger/3.main
#   asset:sacred_treasure/0713.deep_sea_coral_leggings/trigger/3.main
#   asset:sacred_treasure/0714.deep_sea_coral_boots/trigger/3.main

# フルセットを検知する用Tag
    tag @s add JR.Fullset

# 水攻撃+5%
    data modify storage api: Argument.UUID set value [I;1,1,711,0]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/water/add

# スケジュールループ開始
    schedule function asset:sacred_treasure/0711.deep_sea_coral_crown/trigger/fullset/loop 1t replace