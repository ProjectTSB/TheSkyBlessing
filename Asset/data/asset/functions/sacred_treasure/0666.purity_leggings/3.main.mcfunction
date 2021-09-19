#> asset:sacred_treasure/0666.purity_leggings/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0666.purity_leggings/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/legs

# ここから先は神器側の効果の処理を書く

# 演出
    playsound item.armor.equip_iron master @a ~ ~ ~ 1.5 1 0

# 物理ダメージ量+7.5%
    data modify storage api: Argument.UUID set value [I;1,1,666,4]
    data modify storage api: Argument.Amount set value 0.075
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/physical/add

# 物理耐性+7.5%
    data modify storage api: Argument.UUID set value [I;1,1,666,4]
    data modify storage api: Argument.Amount set value 0.075
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/physical/add

# 魔法ダメージ量+7.5%
    data modify storage api: Argument.UUID set value [I;1,1,666,4]
    data modify storage api: Argument.Amount set value 0.075
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/magic/add

# 魔法耐性+7.5%
    data modify storage api: Argument.UUID set value [I;1,1,666,4]
    data modify storage api: Argument.Amount set value 0.075
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/magic/add

# フルセット
    execute if data storage asset:context id.all{head:664,chest:665,legs:666,feet:667} run function asset:sacred_treasure/0665.purity_armor/4.fullset