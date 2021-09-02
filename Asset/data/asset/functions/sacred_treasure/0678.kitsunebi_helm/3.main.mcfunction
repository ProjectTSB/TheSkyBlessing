#> asset:sacred_treasure/0678.kitsunebi_helm/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0678.kitsunebi_helm/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/head

# ここから先は神器側の効果の処理を書く

# 演出
    particle flame ~ ~1.7 ~ 0.4 0.1 0.4 0 8 normal @s
    particle soul_fire_flame ~ ~1.7 ~ 0.4 0.1 0.4 0 8 normal @s
    playsound block.fire.ambient master @a ~ ~ ~ 0.8 0.5 0.6

# 火ダメージ量+5%、魔法耐性5%、火耐性5%
    data modify storage api: Argument.UUID set value [I;1,1,678,6]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/fire/add

    data modify storage api: Argument.UUID set value [I;1,1,678,6]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/magic/add

    data modify storage api: Argument.UUID set value [I;1,1,678,6]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/fire/add

# フルセット
    execute if data storage asset:context id.all{head:678,chest:679,legs:680,feet:681} run function asset:sacred_treasure/0679.kitsunebi_armor/4.fullset