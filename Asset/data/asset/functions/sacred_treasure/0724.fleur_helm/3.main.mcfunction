#> asset:sacred_treasure/0724.fleur_helm/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0724.fleur_helm/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/head

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:block.amethyst_cluster.step master @a ~ ~ ~ 1 0 1
    execute unless data storage asset:context id.all{head:724,chest:725,legs:726,feet:727} run particle minecraft:falling_dust magenta_glazed_terracotta ~ ~1.7 ~ 0.4 0.1 0.4 0 20
    execute unless data storage asset:context id.all{head:724,chest:725,legs:726,feet:727} run particle minecraft:falling_dust prismarine_bricks ~ ~1.7 ~ 0.4 0.1 0.4 0 10

# 魔法耐性+5%
    data modify storage api: Argument.UUID set value [I;1,1,724,6]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/magic/add

# 水耐性+5%
    data modify storage api: Argument.UUID set value [I;1,1,724,6]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/magic/add

# 体力回復量+12.5%
    data modify storage api: Argument.UUID set value [I;1,1,724,6]
    data modify storage api: Argument.Amount set value 0.125
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/heal/add

# フルセット
    execute if data storage asset:context id.all{head:724,chest:725,legs:726,feet:727} run function asset:sacred_treasure/0725.fleur_armor/4.fullset