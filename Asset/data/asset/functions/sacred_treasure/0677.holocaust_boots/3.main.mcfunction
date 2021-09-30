#> asset:sacred_treasure/0677.holocaust_boots/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0677.holocaust_boots/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/feet

# ここから先は神器側の効果の処理を書く

# 演出
    particle explosion ~ ~0.3 ~ 0.4 0.15 0.4 0 2 normal @a
    particle cloud ~ ~0.3 ~ 0 0.1 0 0.1 20 normal @a
    particle smoke ~ ~0.3 ~ 0.4 0.15 0.4 0.1 20 normal @a
    particle dripping_dripstone_lava ~ ~0.3 ~ 0.4 0.15 0.4 0 20 normal @a
    playsound entity.generic.explode master @a ~ ~ ~ 0.7 1.2 0

# 物理ダメージ量+7.5%
    data modify storage api: Argument.UUID set value [I;1,1,677,3]
    data modify storage api: Argument.Amount set value 0.075
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/magic/add

# 物理耐性+5%
    data modify storage api: Argument.UUID set value [I;1,1,677,3]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/magic/add

# MP回復量+7.5%
    data modify storage api: Argument.UUID set value [I;1,1,677,3]
    data modify storage api: Argument.Amount set value 0.075
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/mp_regen/add

