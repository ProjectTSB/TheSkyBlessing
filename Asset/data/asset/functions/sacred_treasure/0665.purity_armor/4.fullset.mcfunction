#> asset:sacred_treasure/0665.purity_armor/4.fullset
#
#
#
# @within function asset:sacred_treasure/066?.purity_*/3.main

# 演出
    particle flash ~ ~1.2 ~ 0.3 0.3 0.3 0 5 normal @a
    playsound block.end_portal.spawn master @a ~ ~ ~ 0.6 1.4 0

# フルセットTag付与
    tag @s add IH.Fullset

# 火耐性+10%
    data modify storage api: Argument.UUID set value [I;1,1,665,5]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/fire/add

# 水耐性+10%
    data modify storage api: Argument.UUID set value [I;1,1,665,5]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/water/add

# 雷耐性+10%
    data modify storage api: Argument.UUID set value [I;1,1,665,5]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/thunder/add

# スケジュールループ開始
    schedule function asset:sacred_treasure/0665.purity_armor/6.schedule_loop 1t replace