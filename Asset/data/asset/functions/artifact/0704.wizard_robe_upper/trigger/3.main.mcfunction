#> asset:artifact/0704.wizard_robe_upper/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0704.wizard_robe_upper/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/chest

# ここから先は神器側の効果の処理を書く

# 魔法耐性+2.5%
    data modify storage api: Argument.UUID set value [I;1,1,704,5]
    data modify storage api: Argument.Amount set value 0.025
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/magic/add

# 魔法攻撃+2.5%
    data modify storage api: Argument.UUID set value [I;1,1,704,5]
    data modify storage api: Argument.Amount set value 0.025
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/magic/add

# MP回復量+2.5%
    data modify storage api: Argument.UUID set value [I;1,1,704,5]
    data modify storage api: Argument.Amount set value 0.025
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/mp_regen/add

# 物理耐性-2.5%
    data modify storage api: Argument.UUID set value [I;1,1,704,5]
    data modify storage api: Argument.Amount set value -0.025
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/physical/add

# 物理攻撃-2.5%
    data modify storage api: Argument.UUID set value [I;1,1,704,5]
    data modify storage api: Argument.Amount set value -0.025
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/physical/add

# 演出
    particle witch ~ ~1.3 ~ 0.3 0.25 0.3 1 10 normal @a
    playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 0.8 1