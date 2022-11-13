#> asset:sacred_treasure/0725.oblivious_snow/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0725.oblivious_snow/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/chest

# ここから先は神器側の効果の処理を書く

# 演出
    execute unless data storage asset:context id.all{head:724,chest:725,legs:726,feet:727} run particle snowflake ~ ~1.2 ~ 0.4 0.2 0.4 0.1 50 normal @a
    execute unless data storage asset:context id.all{head:724,chest:725,legs:726,feet:727} run playsound minecraft:block.powder_snow.step player @a ~ ~ ~ 1 0.5 0
    execute unless data storage asset:context id.all{head:724,chest:725,legs:726,feet:727} run playsound minecraft:block.powder_snow.step player @a ~ ~ ~ 1 0 0

# 水耐性+10%
    data modify storage api: Argument.UUID set value [I;1,1,725,5]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/water/add

# 水攻撃+10%
    data modify storage api: Argument.UUID set value [I;1,1,725,5]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/water/add

# mp回復+8%
    data modify storage api: Argument.UUID set value [I;1,1,725,5]
    data modify storage api: Argument.Amount set value 0.08
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/mp_regen/add

# 被回復量-10%
    data modify storage api: Argument.UUID set value [I;1,1,725,5]
    data modify storage api: Argument.Amount set value -0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    #function api:player_modifier/attack/receive_heal/add

# フルセット
    execute if data storage asset:context id.all{head:724,chest:725,legs:726,feet:727} run function asset:sacred_treasure/0724.oblivious_snow/trigger/fullset/equip