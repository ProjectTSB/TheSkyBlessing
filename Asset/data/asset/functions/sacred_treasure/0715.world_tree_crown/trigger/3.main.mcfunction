#> asset:sacred_treasure/0715.world_tree_crown/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0715.world_tree_crown/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/head

# ここから先は神器側の効果の処理を書く

# 体力+5
    attribute @s generic.max_health modifier add 00000001-0000-0001-0000-02cb00000006 "0715.MaxHealth" 5 add

# 移動速度+5％
    attribute @s generic.movement_speed modifier add 00000001-0000-0001-0000-02cb00000006 "0715.Speed" 0.05 multiply_base

# MP回復量+10％
    data modify storage api: Argument.UUID set value [I;1,1,715,6]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/mp_regen/add