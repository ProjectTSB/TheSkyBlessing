#> asset:artifact/0664.soul_fire_armor/trigger/fullset/
#
# 全て装備したときの効果
#
# @within function
#   asset:artifact/0664.soul_fire_armor/trigger/3.main
#   asset:artifact/0665.soul_fire_armor/trigger/3.main
#   asset:artifact/0666.soul_fire_armor/trigger/3.main
#   asset:artifact/0667.soul_fire_armor/trigger/3.main

# 演出
    function asset:artifact/0664.soul_fire_armor/trigger/fullset/particle
    playsound block.fire.ambient player @a ~ ~ ~ 2 0.8 0
    playsound particle.soul_escape player @a ~ ~ ~ 2 0 0
    playsound minecraft:block.sculk_sensor.clicking player @a ~ ~ ~ 0.6 0.4 0
    playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 0.6 1 0
    playsound ogg:mob.vex.idle1 player @a ~ ~ ~ 1 0 0

# 最大体力-10%
    attribute @s generic.max_health modifier add 00000001-0000-0001-0000-029800000003 "FullsetMaxHealthDown" -0.1 multiply_base

# 最大体力を反映するための即時回復
    effect give @s instant_health 1 0

# 火攻撃+10%
    data modify storage api: Argument.UUID set value [I;1,1,664,0]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/fire/add

# MP回復量+8%
    data modify storage api: Argument.UUID set value [I;1,1,664,0]
    data modify storage api: Argument.Amount set value 0.08
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/mp_regen/add

# フルセット用Tagを付与
    tag @s add IG.Fullset

# スケジュールループ開始
    schedule function asset:artifact/0664.soul_fire_armor/trigger/fullset/loop 1t replace