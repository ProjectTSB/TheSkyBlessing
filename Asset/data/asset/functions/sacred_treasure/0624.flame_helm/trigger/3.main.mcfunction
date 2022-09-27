#> asset:sacred_treasure/0624.flame_helm/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0624.flame_helm/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/head

# ここから先は神器側の効果の処理を書く

# 火耐性+3%
    data modify storage api: Argument.UUID set value [I;1,1,624,6]
    data modify storage api: Argument.Amount set value 0.03
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/fire/add

# 火攻撃+3%
    data modify storage api: Argument.UUID set value [I;1,1,624,6]
    data modify storage api: Argument.Amount set value 0.03
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/fire/add

# 演出
    particle flame ~ ~1.6 ~ 0.4 0.2 0.4 0 10 normal @a
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.4 1

# 一式検知
    execute if data storage asset:context id.all{head:624,chest:625,legs:626,feet:627} run function asset:sacred_treasure/0625.flame_armor/trigger/4.fullset