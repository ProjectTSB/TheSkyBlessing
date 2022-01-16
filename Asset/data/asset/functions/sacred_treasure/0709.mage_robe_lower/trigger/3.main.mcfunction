#> asset:sacred_treasure/0709.mage_robe_lower/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0709.mage_robe_lower/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/legs

# ここから先は神器側の効果の処理を書く

# 魔法耐性+5%
    data modify storage api: Argument.UUID set value [I;1,1,709,4]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/magic/add

# 魔法攻撃+5%
    data modify storage api: Argument.UUID set value [I;1,1,709,4]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/magic/add

# MP回復量+5%
    data modify storage api: Argument.UUID set value [I;1,1,709,4]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/mp_regen/add

# 物理耐性-5%
    data modify storage api: Argument.UUID set value [I;1,1,709,4]
    data modify storage api: Argument.Amount set value -0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/physical/add

# 物理攻撃-5%
    data modify storage api: Argument.UUID set value [I;1,1,709,4]
    data modify storage api: Argument.Amount set value -0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/physical/add

# 演出
    particle witch ~ ~0.4 ~ 0.3 0.15 0.3 1 10 normal @a
    particle enchant ~ ~0.4 ~ 0.4 0.15 0.4 0 30 normal @a
    playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 0.8 0 0