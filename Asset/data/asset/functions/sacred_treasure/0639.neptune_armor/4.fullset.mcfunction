#> asset:sacred_treasure/0639.neptune_armor/4.fullset
#
#
#
# @within function asset:sacred_treasure/????.neptune_*/3.main

# 天気変更
    weather thunder

# タグを自分に付与
    tag @s add HS.Fullset

# 演出
    particle splash ~ ~1.5 ~ 0.7 1 0.7 0 400 normal @a
    playsound entity.dolphin.splash master @a ~ ~ ~ 2 1.2 0
    playsound block.end_portal.spawn master @a ~ ~ ~ 0.6 1.4 0

# 水ダメージ量+10%
    data modify storage api: Argument.UUID set value [I;1,1,639,0]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/water/add

# スケジュールループ
    schedule function asset:sacred_treasure/0639.neptune_armor/5.schedule_loop 1t replace