#> asset:sacred_treasure/0568.great_sage_leggings/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0568.great_sage_leggings/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/legs

# ここから先は神器側の効果の処理を書く

# 魔法耐性+7.5%
    data modify storage api: Argument.UUID set value [I;1,1,568,4]
    data modify storage api: Argument.Amount set value 0.075
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/magic/add

# 魔法攻撃+7.5%
    data modify storage api: Argument.UUID set value [I;1,1,568,4]
    data modify storage api: Argument.Amount set value 0.075
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/magic/add

# MP回復量+10%
    data modify storage api: Argument.UUID set value [I;1,1,568,4]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/mp_regen/add

# 物理耐性-7.5%
    data modify storage api: Argument.UUID set value [I;1,1,568,4]
    data modify storage api: Argument.Amount set value -0.075
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/physical/add

# 物理攻撃-17.5%
    data modify storage api: Argument.UUID set value [I;1,1,568,4]
    data modify storage api: Argument.Amount set value -0.175
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/physical/add


#セット効果用のファンクション実行（実行は頭のほうで）
    execute if data storage asset:context id.all{head:566,chest:567,legs:568,feet:569} run function asset:sacred_treasure/0566.great_sage_helmet/equip/4.fullset