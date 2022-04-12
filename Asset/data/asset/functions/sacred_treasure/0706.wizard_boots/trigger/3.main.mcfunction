#> asset:sacred_treasure/0706.wizard_boots/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0706.wizard_boots/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/feet

# ここから先は神器側の効果の処理を書く

# 魔法耐性+2.5%
    data modify storage api: Argument.UUID set value [I;1,1,706,3]
    data modify storage api: Argument.Amount set value 0.025
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/magic/add
    
# 魔法攻撃+2.5%
    data modify storage api: Argument.UUID set value [I;1,1,706,3]
    data modify storage api: Argument.Amount set value 0.025
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/magic/add

# MP回復量+2.5%
    data modify storage api: Argument.UUID set value [I;1,1,706,3]
    data modify storage api: Argument.Amount set value 0.025
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/mp_regen/add

# 物理耐性-2.5%
    data modify storage api: Argument.UUID set value [I;1,1,706,3]
    data modify storage api: Argument.Amount set value -0.025
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/physical/add

# 物理攻撃-2.5%
    data modify storage api: Argument.UUID set value [I;1,1,706,3]
    data modify storage api: Argument.Amount set value -0.025
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/physical/add

# 演出
    particle witch ~ ~0.3 ~ 0.3 0.1 0.3 1 10 normal @a
    playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 0.8 1