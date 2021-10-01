#> asset:sacred_treasure/0651.prominence_armor/4.fullset
#
#
#
# @within function
#   asset:sacred_treasure/0650.prominence_helm/3.main
#   asset:sacred_treasure/0651.prominence_armor/3.main
#   asset:sacred_treasure/0652.prominence_leggings/3.main
#   asset:sacred_treasure/0653.prominence_boots/3.main

# タグ
    tag @s add I3.Fullset

# 演出
    particle lava ~ ~1.2 ~ 0.75 0.4 0.75 0 80 normal @a
    playsound entity.blaze.shoot master @a 0.5 0 0
    playsound block.end_portal.spawn master @a ~ ~ ~ 0.6 1.4 0
# 火ダメージ量+10%
    data modify storage api: Argument.UUID set value [I;1,1,651,0]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/fire/add

# 専用スコアを0に
    scoreboard players set @s I3.IsFighting 0

# スケジュールループスタート
    schedule function asset:sacred_treasure/0651.prominence_armor/6.schedule_loop 1t replace