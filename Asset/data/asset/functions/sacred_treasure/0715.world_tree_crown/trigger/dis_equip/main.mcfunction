#> asset:sacred_treasure/0715.world_tree_crown/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0715.world_tree_crown/trigger/dis_equip/

# 以下の補正を消す

# 体力+5
    attribute @s generic.max_health modifier remove 00000001-0000-0001-0000-02cb00000006

# 移動速度+5％
    attribute @s generic.movement_speed modifier remove 00000001-0000-0001-0000-02cb00000006

# MP回復量+10％
    data modify storage api: Argument.UUID set value [I;1,1,715,6]
    function api:player_modifier/mp_regen/remove