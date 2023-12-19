#> asset:artifact/0743.evening_wind/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0743.evening_wind/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

#particle dust 1 0.373 0.373 1
#particle dust 1 0.635 0 1

# 演出
    particle dust_color_transition 1 0.373 0.373 1.6 1 0.635 0 ~ ~1.3 ~ 0.9 0.6 0.9 0 60 normal @a
    particle dust_color_transition 1 0.635 0 1.6 1 0.373 0.373 ~ ~1.3 ~ 0.9 0.6 0.9 0 60 normal @a
    particle flame ~ ~1.3 ~ 0.9 0.6 0.9 0.12 30 normal @a
    playsound block.fire.ambient player @a ~ ~ ~ 0.7 0.7 0
    playsound block.fire.ambient player @a ~ ~ ~ 0.7 0.8 0
    playsound block.fire.ambient player @a ~ ~ ~ 0.7 0.9 0
    playsound block.fire.ambient player @a ~ ~ ~ 0.7 1.1 0
    playsound block.lava.extinguish player @a ~ ~ ~ 0.5 0.9

# 火攻撃+15%
    data modify storage api: Argument.UUID set value [I;1,1,743,7]
    data modify storage api: Argument.Amount set value 0.15
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/fire/add

# 移動速度+15%
    attribute @s generic.movement_speed modifier add 00000001-0000-0001-0000-02e700000007 "Speed" 0.15 multiply_base

# 水攻撃-25%
    data modify storage api: Argument.UUID set value [I;1,1,743,7]
    data modify storage api: Argument.Amount set value -0.25
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/water/add

# Tag付与
    tag @s add KN.Modifier