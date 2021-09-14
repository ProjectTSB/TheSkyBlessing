#> asset:sacred_treasure/0742.fierce_water_helm/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0742.fierce_water_helm/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/head

# ここから先は神器側の効果の処理を書く

# 演出
    particle rain ~ ~1.7 ~ 0.4 1 0.4 0 40 normal @a
    playsound minecraft:entity.player.splash.high_speed master @a ~ ~ ~ 0.3 1.2 0

# 物理ダメージ+5%
    data modify storage api: Argument.UUID set value [I;1,1,742,6]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/physical/add

# 水ダメージ量+7.5%
    data modify storage api: Argument.UUID set value [I;1,1,742,6]
    data modify storage api: Argument.Amount set value 0.075
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/water/add

# 水耐性+5%
    data modify storage api: Argument.UUID set value [I;1,1,742,6]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/water/add

# フルセット
    execute if data storage asset:context id.all{head:742,chest:743,legs:744,feet:745} run function asset:sacred_treasure/0743.fierce_water_armor/4.fullset