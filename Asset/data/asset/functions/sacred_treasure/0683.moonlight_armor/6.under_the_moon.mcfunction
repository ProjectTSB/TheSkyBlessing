#> asset:sacred_treasure/0683.moonlight_armor/6.under_the_moon
#
#
#
# @within function asset:sacred_treasure/0683.moonlight_armor/5.schedule_loop

# タグ付与
    tag @s add IZ.UnderTheMoon

# ここで最大体力を上げる
    attribute @s generic.max_health modifier add 00000001-0000-0001-0000-02ab00000005 "IZ.max_health" 0.5 multiply_base

# 演出
    execute rotated ~180 0 positioned ^ ^0.2 ^-1.5 run function asset:sacred_treasure/0683.moonlight_armor/7.fullset_particle
    playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 1.5 1.3 0

# 魔法ダメージ量+50%
    data modify storage api: Argument.UUID set value [I;1,1,683,5]
    data modify storage api: Argument.Amount set value 0.5
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/magic/add

# 魔法耐性+40%
    data modify storage api: Argument.UUID set value [I;1,1,683,5]
    data modify storage api: Argument.Amount set value 0.4
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/magic/add

# MP回復量+50%
    data modify storage api: Argument.UUID set value [I;1,1,683,5]
    data modify storage api: Argument.Amount set value 0.5
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/mp_regen/add
